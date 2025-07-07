import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'themed_map_source.freezed.dart';

@freezed
abstract class ThemedMapSource with _$ThemedMapSource {
  const ThemedMapSource._();
  const factory ThemedMapSource({required String dark, required String light}) = _ThemedMapSource;

  String resolve(BuildContext context) => switch (Theme.of(context).brightness) {
    Brightness.dark => dark,
    Brightness.light => light,
  };
}
