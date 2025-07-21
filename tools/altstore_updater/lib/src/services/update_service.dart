import 'dart:convert';
import 'dart:io';

import 'package:altstore_updater/src/models/app_version.dart';
import 'package:altstore_updater/src/services/ipa_parsing_service.dart';

class UpdateService {
  UpdateService({IPAParsingService ipaParsingService = const IPAParsingService()})
    : _ipaParsingService = ipaParsingService;

  final IPAParsingService _ipaParsingService;

  Future<void> addUpdate(
    String sourcePath, {
    required String downloadUrl,
    required String ipaPath,
  }) async {
    final originalFile = File(sourcePath);
    final originalSource = await originalFile.readAsString();
    final Map<String, dynamic> originalJson = jsonDecode(originalSource);

    final ipaInfos = await _ipaParsingService.parseIPA(ipaPath);
    final newAppVersion = AppVersion(
      version: ipaInfos.version,
      buildVersion: ipaInfos.buildVersion,
      date: DateTime.now().toIso8601String(),
      downloadURL: downloadUrl,
      size: ipaInfos.size,
      minOSVersion: ipaInfos.minOSVersion,
    );

    print("Add new version: $newAppVersion");
    originalJson["apps"]
        .firstWhere((app) => app["bundleIdentifier"] == ipaInfos.bundleIdentifier)["versions"]
        .insert(0, newAppVersion.toJson());
    final encoder = JsonEncoder.withIndent('  ');
    originalFile.writeAsString(encoder.convert(originalJson));
  }
}
