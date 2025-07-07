import 'package:flutter/material.dart';
import 'package:track_map/models/map_style.dart';

class MapStyleSegmentButton extends ButtonSegment<MapStyle> {
  MapStyleSegmentButton(MapStyle value)
    : super(value: value, icon: Icon(value.icon), tooltip: value.key);
}

extension _IconOfStyle on MapStyle {
  IconData get icon => switch (this) {
    MapStyle.standard => Icons.directions_railway,
    MapStyle.speed => Icons.speed,
    MapStyle.electrification => Icons.electric_bolt,
    MapStyle.signals => Icons.security,
    MapStyle.gauge => Icons.straighten,
  };
}
