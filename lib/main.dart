import 'package:flutter/material.dart';
import 'package:track_map/dependency_injection.dart';
import 'package:track_map/screens/map/map_view.dart';

void main() {
  configureDependencies();
  runApp(const TrackMapApp());
}

class TrackMapApp extends StatelessWidget {
  const TrackMapApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrackMap',
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
