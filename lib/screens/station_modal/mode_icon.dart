import 'package:flutter/material.dart';
import 'package:motis/motis.dart';

extension ModeIcon on Mode {
  IconData get icon => switch (this) {
    Mode.WALK || Mode.TRANSIT => Icons.directions_walk,
    Mode.BIKE => Icons.directions_bike,
    Mode.RENTAL => Icons.car_rental,
    Mode.CAR => Icons.directions_car,
    Mode.CAR_PARKING => Icons.local_parking,
    Mode.CAR_DROPOFF || Mode.ODM || Mode.FLEX => Icons.local_taxi,
    Mode.TRAM => Icons.tram,
    Mode.METRO || Mode.SUBWAY => Icons.subway,
    Mode.FERRY => Icons.directions_ferry,
    Mode.AIRPLANE => Icons.flight,
    Mode.BUS || Mode.COACH => Icons.directions_bus,
    Mode.RAIL ||
    Mode.HIGHSPEED_RAIL ||
    Mode.LONG_DISTANCE ||
    Mode.NIGHT_RAIL ||
    Mode.REGIONAL_FAST_RAIL ||
    Mode.REGIONAL_RAIL ||
    Mode.SUBURBAN => Icons.train,
    Mode.CABLE_CAR ||
    Mode.FUNICULAR ||
    Mode.AERIAL_LIFT ||
    Mode.OTHER ||
    Mode.AREAL_LIFT => Icons.emoji_transportation,
  };
}
