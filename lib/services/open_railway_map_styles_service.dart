import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:track_map/config.dart';
import 'package:track_map/models/map_style.dart';
import 'package:track_map/models/themed_map_source.dart';
import 'package:track_map/services/temp_file_service.dart';

@singleton
class OpenRailwayMapStylesService {
  OpenRailwayMapStylesService(this._dio, this._tempFileService);
  static const _baseUrl = "$_originUrl/style";
  static const _originUrl = TrackMapConfig.backendUrl;

  final Dio _dio;
  final TempFileService _tempFileService;

  final Logger _log = Logger();

  Future<String> loadStyle(MapStyle style, {bool dark = false}) async {
    final fileName = "${style.key}-${dark ? 'dark' : 'light'}.json";
    try {
      final url = '$_baseUrl/$fileName';
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
      final path = await _tempFileService.writeToFile(fileName, result);
      _log.i("wrote style json to $path");
      return path;
    } catch (err, stack) {
      _log.w(
        'error while fetching and rewritting style json, falling back to asset backup',
        error: err,
        stackTrace: stack,
      );
      return 'assets/assets/styles/$fileName';
    }
  }

  Future<ThemedMapSource> loadThemedStyle(MapStyle style) async {
    final [light, dark] = await Future.wait([
      loadStyle(style, dark: false),
      loadStyle(style, dark: true),
    ]);
    return ThemedMapSource(dark: dark, light: light);
  }

  Future<Map<MapStyle, ThemedMapSource>> loadAllThemedStyles() async {
    return Map.fromIterables(
      MapStyle.values,
      await Future.wait(MapStyle.values.map(loadThemedStyle)),
    );
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
