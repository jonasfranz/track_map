import 'dart:io';

import 'package:dio/dio.dart';
import 'package:track_map/services/open_railway_map_styles_service.dart';
import 'package:track_map/services/temp_file_service.dart';

class AssetFileService implements TempFileService {
  @override
  Future<String> writeToFile(String name, String content) async {
    final file = File("assets/styles/$name");
    await file.writeAsString(content);
    return file.path;
  }
}

void main() async {
  await OpenRailwayMapStylesService(Dio(), AssetFileService()).loadAllThemedStyles();
}
