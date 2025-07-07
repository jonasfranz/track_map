import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:maplibre_gl/maplibre_gl.dart';

@injectable
class MapSyncService {
  MapLibreMapController? _mainController;
  final List<MapLibreMapController> _childControllers = [];

  void registerMainController(MapLibreMapController controller) {
    _removeListener();
    _mainController = controller;
    _didMainControllerUpdate();
    controller.addListener(_didMainControllerUpdate);
  }

  void addChildController(MapLibreMapController controller) {
    _childControllers.add(controller);
    if (_currentCameraUpdate case final update?) {
      controller.moveCamera(update);
    }
  }

  void removeChildController(MapLibreMapController controller) {
    _childControllers.remove(controller);
  }

  CameraUpdate? get _currentCameraUpdate {
    final newPosition = _mainController?.cameraPosition;
    if (newPosition == null) return null;
    return CameraUpdate.newCameraPosition(newPosition);
  }

  void _didMainControllerUpdate() {
    final update = _currentCameraUpdate;
    if (update == null) return;
    for (final childController in _childControllers) {
      unawaited(childController.moveCamera(update));
    }
  }

  void _removeListener() {
    _mainController?.removeListener(_didMainControllerUpdate);
  }

  void dispose() {
    _removeListener();
  }
}
