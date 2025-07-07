import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:track_map/models/map_style.dart';
import 'package:track_map/screens/map/map_view_state.dart';
import 'package:track_map/services/location_service.dart';
import 'package:track_map/services/map_sync_service.dart';
import 'package:track_map/services/open_railway_map_styles_service.dart';

@injectable
class MapViewModel {
  MapViewModel(this._stylesService, this._syncService, this._locationService);

  final OpenRailwayMapStylesService _stylesService;
  final LocationService _locationService;
  final MapSyncService _syncService;

  late final BehaviorSubject<MapViewState> _viewState$ =
      BehaviorSubject()..addStream(_loadInitialStyles());

  Stream<MapViewState> get viewState$ => _viewState$.stream;

  MapLibreMapController? _foregroundController;
  MapLibreMapController? _backgroundController;

  void setForegroundController(MapLibreMapController controller) {
    _foregroundController = controller;
    _syncService.registerMainController(controller);
  }

  void setBackgroundController(MapLibreMapController controller) {
    if (_backgroundController case final oldController?) {
      _syncService.removeChildController(oldController);
    }
    _backgroundController = controller;
    _syncService.addChildController(controller);
  }

  Stream<MapViewState> _loadInitialStyles() async* {
    yield MapViewState.loading();
    final initialLocation = await _locationService.findCurrentLocation() ?? LatLng(0, 0);
    final initialCameraPosition = CameraPosition(target: initialLocation, zoom: 8);
    final styles = await _stylesService.loadAllThemedStyles();
    yield MapViewState.ready(
      availableStyles: styles,
      selectedStyle: MapStyle.standard,
      initialCameraPosition: initialCameraPosition,
    );
  }

  void dispose() {
    _syncService.dispose();
    _viewState$.close();
  }

  void selectStyle(MapStyle selectedStyle) {
    _viewState$.value = _viewState$.value.maybeMap(
      ready: (value) => value.copyWith(selectedStyle: selectedStyle),
      orElse: () => _viewState$.value,
    );
  }
}
