import 'package:track_map/services/temp_file_service.dart';

class TempFileServiceImpl implements TempFileService {
  const TempFileServiceImpl();

  @override
  Future<String> writeToFile(String name, String content) async {
    throw UnimplementedError();
  }

  @override
  String getAssetPath(String path) {
    throw UnimplementedError();
  }
}
