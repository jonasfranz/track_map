import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:track_map/models/ice_status.dart';
import 'package:track_map/models/map_style.dart';
import 'package:track_map/screens/map/map_view_state.dart';
import 'package:track_map/services/ice_portal_service.dart';
import 'package:track_map/services/location_service.dart';
import 'package:track_map/services/map_sync_service.dart';
import 'package:track_map/services/open_railway_map_styles_service.dart';
import 'package:track_map/utils/view_model.dart';

@injectable
class MapViewModel extends ViewModel {
  MapViewModel(
    this._stylesService,
    this._syncService,
    this._locationService,
    this._icePortalService,
  );

  final OpenRailwayMapStylesService _stylesService;
  final LocationService _locationService;
  final MapSyncService _syncService;
  final ICEPortalService _icePortalService;

  late final Stream<ICEStatus?> iceStatus$ = _icePortalService.pollStatus().asBroadcastStream();

  late final BehaviorSubject<MapViewState> _viewState$ = BehaviorSubject()
    ..addStream(_loadInitialStyles());

  Stream<MapViewState> get viewState$ => _viewState$.stream;

  StreamSubscription? _iceStatusSubscription;
  Circle? _circle;

  MapLibreMapController? _foregroundController;
  MapLibreMapController? _backgroundController;

  void setForegroundController(MapLibreMapController controller) {
    _foregroundController = controller;
    _syncService.registerMainController(controller);
    _iceStatusSubscription?.cancel();
    _iceStatusSubscription = iceStatus$.listen((status) async {
      if (_circle != null) controller.removeCircle(_circle!);
      if (status == null) {
        return;
      }
      _circle = await controller.addCircle(
        CircleOptions(
          circleRadius: 12,
          circleColor: Colors.red.toHexStringRGB(),
          geometry: LatLng(status.latitude, status.longitude),
        ),
      );
    });
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
    final [initialCameraPosition, styles] = await Future.wait<dynamic>([
      _findInitialCameraPosition(),
      _stylesService.loadAllThemedStyles(),
    ]);
    yield MapViewState.ready(
      availableStyles: styles,
      selectedStyle: MapStyle.standard,
      initialCameraPosition: initialCameraPosition,
    );
  }

  Future<CameraPosition> _findInitialCameraPosition() async {
    final initialLocation =
        await _locationService
            .findCurrentLocation()
            .timeout(Duration(seconds: 30), onTimeout: () => null)
            .catchError((_) => null) ??
        LatLng(51.14, 12.55);
    return CameraPosition(target: initialLocation, zoom: 12.5);
  }

  Future<void> animateToCurrentLocation() async {
    final currentLocation =
        await _foregroundController?.requestMyLocationLatLng() ??
        await _locationService.findCurrentLocation();
    if (currentLocation != null) {
      await _foregroundController?.animateCamera(
        CameraUpdate.newLatLng(currentLocation),
      );
    }
  }

  Future<void> animateToLocation(LatLng location) async {
    await _foregroundController?.animateCamera(
      CameraUpdate.newLatLngZoom(location, 15),
    );
  }

  @override
  void dispose() {
    _iceStatusSubscription?.cancel();
    _syncService.dispose();
    _viewState$.close();
  }

  void selectStyle(MapStyle selectedStyle) {
    _viewState$.value = _viewState$.value.maybeMap(
      ready: (value) => value.copyWith(selectedStyle: selectedStyle),
      orElse: () => _viewState$.value,
    );
  }

  Future<(LatLng?, Map<String, dynamic>)?> resolveStationProperties(
    Point<double> point,
    LatLng coordinates,
  ) async {
    final features = await _foregroundController?.queryRenderedFeatures(
      point,
      (await _foregroundController?.getLayerIds())?.cast() ?? <String>[],
      null,
    );
    if (features == null || features.isEmpty) return null;
    for (final feature in features) {
      final properties = feature["properties"];
      if (properties["name"] == null) continue;
      final List<dynamic>? coordinates = feature["geometry"]["coordinates"];
      if (coordinates == null || coordinates.length < 2) continue;
      return (
        LatLng(coordinates[1], coordinates[0]),
        properties as Map<String, dynamic>,
      );
    }
    return null;
  }
}
