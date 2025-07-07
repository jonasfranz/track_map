import 'package:injectable/injectable.dart';

import 'temp_file_service_stub.dart'
    if (dart.library.html) 'temp_file_service_web.dart'
    if (dart.library.io) 'temp_file_service_native.dart';

@singleton
abstract interface class TempFileService {
  @factoryMethod
  const factory TempFileService() = TempFileServiceImpl;
  Future<String> writeToFile(String name, String content);
}
