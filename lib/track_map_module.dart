import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:track_map/services/temp_file_service.dart';

import 'services/temp_file_service_stub.dart'
    if (dart.library.html) 'services/temp_file_service_web.dart'
    if (dart.library.io) 'services/temp_file_service_native.dart';

@module
abstract class TrackMapModule {
  Dio get dio => Dio();

  @singleton
  TempFileService get tempFileService => TempFileServiceImpl();
}
