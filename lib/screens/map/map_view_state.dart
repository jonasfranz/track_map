import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:track_map/models/map_style.dart';
import 'package:track_map/models/themed_map_source.dart';

part 'map_view_state.freezed.dart';

@freezed
abstract class MapViewState with _$MapViewState {
  const factory MapViewState.loading() = _MapViewStateLoading;
  const factory MapViewState.ready({
    required Map<MapStyle, ThemedMapSource> availableStyles,
    required MapStyle selectedStyle,
    required CameraPosition initialCameraPosition,
    @Default(
      ThemedMapSource(
        dark: "https://tiles.openfreemap.org/styles/dark",
        light: "https://tiles.openfreemap.org/styles/positron",
      ),
    )
    ThemedMapSource backgroundMapSource,
  }) = MapViewStateReady;
}

extension MapSource on MapViewStateReady {
  ThemedMapSource get selectedSource =>
      availableStyles[selectedStyle] ?? availableStyles.values.first;
}
