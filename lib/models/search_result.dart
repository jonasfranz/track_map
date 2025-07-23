import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

part 'search_result.freezed.dart';

@freezed
abstract class SearchResult with _$SearchResult {
  const factory SearchResult({
    required String name,
    required String? abbrev,
    required LatLng position,
  }) = _SearchResult;
}
