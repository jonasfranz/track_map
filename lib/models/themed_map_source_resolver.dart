import 'package:flutter/material.dart';
import 'package:track_map/models/themed_map_source.dart';

extension ThemedMapSourceResolver on ThemedMapSource {
  String resolve(BuildContext context) => switch (Theme.of(context).brightness) {
    Brightness.dark => dark,
    Brightness.light => light,
  };
}
