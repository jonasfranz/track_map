import 'package:flutter/material.dart';
import 'package:motis/motis.dart';
import 'package:track_map/utils/extensions.dart';

class TripView extends StatelessWidget {
  const TripView({super.key, required this.trip});

  final Itinerary trip;

  @override
  Widget build(BuildContext context) {
    final leg = trip.legs.first;
    return Column(
      children: [
        _StopTile(stop: leg.from, stopType: _StopType.start),
        ...?leg.intermediateStops?.map((stop) => _StopTile(stop: stop)),
        _StopTile(stop: leg.to, stopType: _StopType.end),
      ],
    );
  }
}

class _StopTile extends StatelessWidget {
  const _StopTile({
    super.key,
    required this.stop,
    this.stopType = _StopType.intermediate,
  });

  final Place stop;
  final _StopType stopType;

  @override
  Widget build(BuildContext context) {
    final track = stop.track;
    return ListTile(
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          _StopTime(stop: stop),
          _RouteProgress(stopType: stopType),
        ],
      ),
      title: Text(
        stop.name,
        style:
            stopType != _StopType.intermediate
                ? TextStyle(fontWeight: FontWeight.bold)
                : TextStyle(fontWeight: FontWeight.normal),
      ),
      trailing: track == null ? null : Text("Gl. $track"),
    );
  }
}

class _StopTime extends StatelessWidget {
  const _StopTime({super.key, required this.stop});

  final Place stop;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (stop.scheduledArrival case final plannedArrival?)
          _RealTimeTime(planned: plannedArrival, actual: stop.arrival),
        if (stop.scheduledDeparture case final plannedDeparture?)
          _RealTimeTime(planned: plannedDeparture, actual: stop.departure),
      ],
    );
  }
}

class _RealTimeTime extends StatelessWidget {
  const _RealTimeTime({
    super.key,
    required this.planned,
    required this.actual,
  });

  final DateTime planned;
  final DateTime? actual;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Text(planned.toTime()),
        if (actual case final actual?)
          Text(
            actual.toTime(),
            style: TextStyle(
              color: actual.difference(planned).inMinutes > 5 ? Colors.red : Colors.green,
            ),
          ),
      ],
    );
  }
}

class _RouteProgress extends StatelessWidget {
  const _RouteProgress({super.key, required this.stopType});

  final _StopType stopType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          stopType != _StopType.start
              ? Expanded(
                child: Container(width: 4, color: Theme.of(context).colorScheme.primary),
              )
              : Spacer(),
          switch (stopType) {
            _StopType.start => _Circle(child: Center(child: _Circle(size: 4))),
            _StopType.intermediate => _Circle(),
            _StopType.end => Center(
              child: Icon(
                Icons.location_pin,
                size: 16,
              ),
            ),
          },
          stopType != _StopType.end
              ? Expanded(
                child: Container(width: 4, color: Theme.of(context).colorScheme.primary),
              )
              : Spacer(),
        ],
      ),
    );
  }
}

class _Circle extends StatelessWidget {
  const _Circle({
    super.key,
    this.size = 12,
    this.child,
  });

  final double size;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2),
      ),
      width: size,
      height: size,
      child: child,
    );
  }
}

enum _StopType {
  start,
  intermediate,
  end,
}
