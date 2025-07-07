import 'dart:async';

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:track_map/dependency_injection.dart';
import 'package:track_map/screens/map/map_view.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const MapView(),
    );
  }
}

class _MapView extends StatefulWidget {
  const _MapView();

  @override
  State<_MapView> createState() => _MapViewState();
}

class _MapViewState extends State<_MapView> {
  final Completer<MapLibreMapController> mapController = Completer();
  final Completer<MapLibreMapController> backgroundMapController = Completer();
  bool canInteractWithMap = false;
  CameraPosition currentLocation = CameraPosition(target: LatLng(8, 8), zoom: 8);

  @override
  void initState() {
    super.initState();
    _resolveLocation();
  }

  Future<void> _resolveLocation() async {
    Location location = Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        print("not enabled");
        return;
      }
    }

    permissionGranted = await location.requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
      print("not granted");
      return;
    }
    LatLng? loc;
    if (mapController.isCompleted) {
      loc = await (await mapController.future).requestMyLocationLatLng();
    }

    if (loc == null) {
      final locationData = await location.getLocation();
      loc = LatLng(locationData.latitude ?? 0, locationData.longitude ?? 0);
    }

    if (mapController.isCompleted) {
      final actualLocation = (await mapController.future).cameraPosition;
      if (actualLocation != null) currentLocation = actualLocation;
    }
    currentLocation = CameraPosition(
      bearing: currentLocation.bearing,
      target: loc,
      tilt: currentLocation.tilt,
      zoom: currentLocation.zoom,
    );
    _moveCameraToNullIsland();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton:
          canInteractWithMap
              ? FloatingActionButton(
                onPressed: _resolveLocation,
                mini: true,
                child: const Icon(Icons.my_location),
              )
              : null,
      body: Stack(
        children: [
          MapLibreMap(
            initialCameraPosition: currentLocation,
            onMapCreated: (controller) => backgroundMapController.complete(controller),
            styleString: "https://tiles.openfreemap.org/styles/dark",
          ),
          MapLibreMap(
            trackCameraPosition: true,
            myLocationEnabled: true,
            compassEnabled: true,
            onMapCreated: (controller) {
              controller.addListener(() async {
                if (backgroundMapController.isCompleted) {
                  final backgroundController = await backgroundMapController.future;
                  final oldPosition = backgroundController.cameraPosition;
                  final newPosition = controller.cameraPosition;
                  if (newPosition == null || newPosition == oldPosition) return;
                  backgroundController.moveCamera(CameraUpdate.newCameraPosition(newPosition));
                }
              });
              mapController.complete(controller);
            },
            initialCameraPosition: currentLocation,
            onStyleLoadedCallback: () => setState(() => canInteractWithMap = true),
            styleString: "assets/standard.json",
          ),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: SafeArea(
              child: SegmentedButton<String>(
                style: SegmentedButton.styleFrom(backgroundColor: Theme.of(context).canvasColor),
                onSelectionChanged: (_) {},
                showSelectedIcon: false,
                segments: [
                  ButtonSegment(value: "standard", icon: Icon(Icons.directions_railway)),
                  ButtonSegment(value: "speed", icon: Icon(Icons.speed)),
                  ButtonSegment(value: "speed", icon: Icon(Icons.security)),
                  ButtonSegment(value: "speed", icon: Icon(Icons.electric_bolt)),
                  ButtonSegment(
                    value: "speed",
                    icon: RotatedBox(quarterTurns: 1, child: Icon(Icons.height)),
                  ),
                ],
                selected: {"standard"},
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _moveCameraToNullIsland() => mapController.future.then((c) {
    return c.animateCamera(CameraUpdate.newCameraPosition(currentLocation));
  });
}
