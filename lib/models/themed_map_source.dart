import 'package:freezed_annotation/freezed_annotation.dart';

part 'themed_map_source.freezed.dart';

@freezed
abstract class ThemedMapSource with _$ThemedMapSource {
  const ThemedMapSource._();
  const factory ThemedMapSource({required String dark, required String light}) = _ThemedMapSource;
}
