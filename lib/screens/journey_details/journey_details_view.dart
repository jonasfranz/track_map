import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:motis/motis.dart';
import 'package:track_map/dependency_injection.dart';
import 'package:track_map/screens/journey_details/journey_details_view_model.dart';
import 'package:track_map/screens/journey_details/trip_view.dart';
import 'package:track_map/utils/use_view_model.dart';
import 'package:track_map/widgets/train_info.dart';

class JourneyDetailsView extends HookWidget {
  const JourneyDetailsView({super.key, required this.stopTime});

  final StopTime stopTime;

  @override
  Widget build(BuildContext context) {
    final viewModel = useViewModel<JourneyDetailsViewModel>(() => getIt.get(param1: stopTime));
    return Scaffold(
      appBar: AppBar(
        title: Text("Fahrtverlauf"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: TrainInfo(stoptime: stopTime),
            ),
          ),
          Card(
            child: StreamBuilder(
              stream: viewModel.trip$,
              builder:
                  (context, snapshot) => switch (snapshot) {
                    AsyncSnapshot(data: final data?) => TripView(trip: data),
                    AsyncSnapshot(error: final error?) => Text("Fehler: $error"),
                    AsyncSnapshot(data: null) => Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  },
            ),
          ),
        ],
      ),
    );
  }
}
