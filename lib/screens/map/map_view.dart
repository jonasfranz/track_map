import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:track_map/dependency_injection.dart';
import 'package:track_map/models/map_style.dart';
import 'package:track_map/screens/map/map_style_segment_button.dart';
import 'package:track_map/screens/map/map_view_model.dart';

import 'map_view_state.dart';

class MapView extends HookWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = useMemoized<MapViewModel>(getIt.call);
    useEffect(() => viewModel.dispose, [viewModel]);
    final viewState =
        useStream(viewModel.viewState$, initialData: MapViewState.loading()).requireData;

    return viewState.map(
      loading: (_) => Scaffold(body: Center(child: CircularProgressIndicator())),
      ready:
          (state) => Scaffold(
            body: Stack(
              children: [
                MapLibreMap(
                  initialCameraPosition: state.initialCameraPosition,
                  onMapCreated: viewModel.setBackgroundController,
                  styleString: state.backgroundMapSource.resolve(context),
                  attributionButtonPosition: AttributionButtonPosition.topLeft,
                ),
                MapLibreMap(
                  initialCameraPosition: state.initialCameraPosition,
                  onMapCreated: viewModel.setForegroundController,
                  styleString: state.selectedSource.resolve(context),
                  trackCameraPosition: true,
                  myLocationEnabled: true,
                  compassEnabled: true,
                  attributionButtonPosition: AttributionButtonPosition.topLeft,
                ),
                _MapStyleSelection(
                  availableStyles: state.availableStyles.keys.toList(),
                  selectedStyle: state.selectedStyle,
                  onChangeMapStyle: viewModel.selectStyle,
                ),
              ],
            ),
          ),
    );
  }
}

class _MapStyleSelection extends StatelessWidget {
  const _MapStyleSelection({
    required this.availableStyles,
    required this.selectedStyle,
    required this.onChangeMapStyle,
  });

  final List<MapStyle> availableStyles;
  final MapStyle selectedStyle;
  final ValueChanged<MapStyle> onChangeMapStyle;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      right: 16,
      bottom: 8,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SegmentedButton(
              style: SegmentedButton.styleFrom(backgroundColor: Theme.of(context).canvasColor),
              segments: availableStyles.map(MapStyleSegmentButton.new).toList(),
              selected: {selectedStyle},
              showSelectedIcon: false,
              onSelectionChanged: (set) => onChangeMapStyle(set.first),
            ),
          ],
        ),
      ),
    );
  }
}
