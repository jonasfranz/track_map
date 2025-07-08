import 'dart:io';

import 'package:archive/archive.dart';
import 'package:plist_parser/plist_parser.dart';

class IPAParsingResult {
  final String version;
  final String buildVersion;
  final int size;
  final String bundleIdentifier;
  final String? minOSVersion;

  const IPAParsingResult._({
    required this.version,
    required this.buildVersion,
    required this.size,
    required this.bundleIdentifier,
    required this.minOSVersion,
  });
}

class IPAParsingService {
  const IPAParsingService();
  static final _matchPattern = RegExp(r"^Payload/[\w\-. ]+\.app/Info\.plist$");

  Future<IPAParsingResult> parseIPA(String path) async {
    final FileStat(:size) = await File(path).stat();
    final inputStream = InputFileStream(path);
    final archive = ZipDecoder().decodeStream(inputStream);
    final infoPlist = archive.firstWhere(
      (file) => _matchPattern.hasMatch(file.name),
      orElse: () => throw Exception("Info.plist file is missing"),
    );
    final content = infoPlist.readBytes();
    if (content == null) {
      throw Exception("invalid IPA");
    }
    final plist = PlistParser().parseBinaryBytes(content);
    return IPAParsingResult._(
      version: plist["CFBundleShortVersionString"],
      buildVersion: plist["CFBundleVersion"],
      bundleIdentifier: plist["CFBundleIdentifier"],
      minOSVersion: plist["MinimumOSVersion"],
      size: size,
    );
  }
}
