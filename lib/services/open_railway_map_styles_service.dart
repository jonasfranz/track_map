import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:track_map/models/map_style.dart';
import 'package:track_map/models/themed_map_source.dart';
import 'package:track_map/services/temp_file_service.dart';
import 'package:track_map/utils/dio_extensions.dart';

@singleton
class OpenRailwayMapStylesService {
  OpenRailwayMapStylesService(this._dio, this._tempFileService);
  static const _baseUrl = "https://openrailwaymap.app/style";
  static const _originUrl = "https://openrailwaymap.app";

  final Dio _dio;
  final TempFileService _tempFileService;

  Future<String> loadStyle(MapStyle style, {Brightness theme = Brightness.light}) async {
    final url = '$_baseUrl/${style.key}-${theme.key}.json';
    final response = await _dio.get<Map<String, dynamic>>(url);
    final data = response.data;
    if (data == null) throw Exception("no data received");
    final rewrittenData = _rewriteOriginLocation(data);
    final rewrittenDataWithLayer = {
      ...rewrittenData,
      "layers": [
        {
          "id": "background",
          "type": "background",
          "paint": {"background-color": "rgba(0,0,0,0)"},
        },
        ...rewrittenData["layers"],
      ],
    };
    final result = jsonEncode(rewrittenDataWithLayer);
    if (Platform.isAndroid) return result;
    final path = await _tempFileService.writeToFile("${style.key}-${theme.key}.json", result);
    print(path);
    return path;
  }

  Future<ThemedMapSource> loadThemedStyle(MapStyle style) async {
    final [light, dark] = await Future.wait([
      loadStyle(style, theme: Brightness.light),
      loadStyle(style, theme: Brightness.dark),
    ]);
    return ThemedMapSource(dark: dark, light: light);
  }

  Future<Map<MapStyle, ThemedMapSource>> loadAllThemedStyles() async {
    final all = Map.fromIterables(
      MapStyle.values,
      await Future.wait(
        MapStyle.values.map((style) async {
          try {
            return loadThemedStyle(style);
          } catch (err) {
            print("error while loading: ${style.key}: $err");
            return null;
          }
        }),
      ),
    );
    all.removeWhere((key, value) => value == null);
    return all.map((key, value) => MapEntry(key, value!));
  }

  Map<String, dynamic> _rewriteOriginLocation(Map<String, dynamic> style) => style.map(
    (key, value) => switch ((key, value)) {
      ("glyphs", _) => MapEntry(key, "$_originUrl$value"),
      (_, Map<String, dynamic> value) => MapEntry(key, _rewriteOriginLocationInMap(value)),
      (_, List value) => MapEntry(key, _rewriteOriginLocationInList(value)),
      (_, _) => MapEntry(key, value),
    },
  );

  Map<String, dynamic> _rewriteUrlObject(Map<String, dynamic> value) {
    final String? url = value["url"];
    return {...value, if (url != null) "url": url.startsWith("/") ? "$_originUrl$url" : url};
  }

  Map<String, dynamic> _rewriteOriginLocationInMap(Map<String, dynamic> sources) =>
      sources.map((key, value) {
        return MapEntry(key, _rewriteUrlObject(value));
      });
  List _rewriteOriginLocationInList(Iterable sources) =>
      sources.map((value) {
        if (value is Map<String, dynamic>) {
          return _rewriteUrlObject(value);
        }
        return value;
      }).toList();
}

extension _BrightnessKey on Brightness {
  String get key => switch (this) {
    Brightness.dark => "dark",
    Brightness.light => "light",
  };
}
