import 'dart:js_interop';

import 'package:track_map/services/temp_file_service.dart';
import 'package:web/web.dart';

class TempFileServiceImpl implements TempFileService {
  const TempFileServiceImpl();

  @override
  Future<String> writeToFile(String name, String content) async {
    final blob = Blob([content.toJS].toJS, BlobPropertyBag(type: "application/json"));
    return URL.createObjectURL(blob);
  }
}
