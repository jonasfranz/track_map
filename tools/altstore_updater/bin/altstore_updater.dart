import 'package:altstore_updater/src/cmd/update_command.dart';
import 'package:args/command_runner.dart';

void main(args) {
  CommandRunner("altstore_updater", "simple tool to add updates to altstore apps")
    ..addCommand(UpdateCommand())
    ..run(args);
}
