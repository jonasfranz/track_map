import 'package:intl/intl.dart';
import 'package:motis/motis.dart';

extension StopDetails on StopTime {
  bool get isSignificantlyDelayed => switch (place) {
    Place(
      departure: final departure?,
      scheduledDeparture: final scheduledDeparture?,
    ) =>
      departure.difference(scheduledDeparture).inMinutes > 5,
    _ => false,
  };
}

extension ToTime on DateTime {
  String toTime() => DateFormat.Hm().format(this);
}
