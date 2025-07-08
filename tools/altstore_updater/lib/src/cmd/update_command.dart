import 'dart:async';
import 'dart:io';

import 'package:altstore_updater/src/services/update_service.dart';
import 'package:args/command_runner.dart';

class UpdateCommand extends Command {
  @override
  final String description = "adds a new update";

  @override
  final String name = "update";

  UpdateCommand() {
    argParser
      ..addOption("source", mandatory: true, abbr: "s")
      ..addOption("ipa", mandatory: true)
      ..addOption("url", mandatory: true);
  }

  @override
  FutureOr? run() async {
    final source = argResults?.option("source");
    final ipa = argResults?.option("ipa");
    final url = argResults?.option("url");
    if (source == null || ipa == null || url == null) {
      print("missing options");
      exit(1);
    }
    await UpdateService().addUpdate(source, downloadUrl: url, ipaPath: ipa);
  }
}
