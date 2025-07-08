import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:track_map/services/temp_file_service.dart';

class TempFileServiceImpl implements TempFileService {
  const TempFileServiceImpl();

  @override
  Future<String> writeToFile(String name, String content) async {
    final supportDirectory = await getApplicationSupportDirectory();
    final file = File(join(supportDirectory.path, name));
    await file.writeAsString(content);
    return file.absolute.path;
  }

  @override
  String getAssetPath(String path) {
    return path;
  }
}
