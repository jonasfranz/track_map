import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:motis/motis.dart';
import 'package:rxdart/rxdart.dart';
import 'package:track_map/screens/journey_details/journey_details_view.dart';
import 'package:track_map/screens/station_modal/departure_board_view_model.dart';
import 'package:track_map/utils/extensions.dart';
import 'package:track_map/utils/use_view_model.dart';
import 'package:track_map/widgets/train_info.dart';

import '../../dependency_injection.dart';

class DepartureBoard extends HookWidget {
  const DepartureBoard({
    super.key,
    required this.coordinates,
  });
  final LatLng coordinates;

  @override
  Widget build(BuildContext context) {
    final viewModel = useViewModel<DepartureBoardViewModel>(
      () => getIt(
        param1: coordinates,
      ),
    );
    final result = useStream(
      CombineLatestStream.combine3(
        viewModel.stopTimes$,
        viewModel.stations$,
        viewModel.selectedStation$,
        (stopTimes, stations, selectedStation) => (
          stopTimes: stopTimes,
          stations: stations,
          selectedStation: selectedStation,
        ),
      ),
    );
    return switch (result) {
      AsyncSnapshot(
        data: (
          selectedStation: final selectedStation,
          stations: final stations?,
          stopTimes: final stopTimes?,
        ),
      ) =>
        _DepatureBoard(
          stoptimes: stopTimes,
          onFetchEarlierDepartures: viewModel.fetchEarlierDepartures,
          onFetchLaterDepartures: viewModel.fetchLaterDepartures,
          selectedStation: selectedStation,
          availableStations: stations,
          onStationChanged: viewModel.changeStation,
        ),
      AsyncSnapshot(data: null, error: final error?) => Center(
        child: Text(error.toString()),
      ),
      AsyncSnapshot(data: null, error: null) => SizedBox(),
      _ => Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    };
  }
}

class _DepatureBoard extends StatelessWidget {
  const _DepatureBoard({
    required this.stoptimes,
    required this.onFetchEarlierDepartures,
    required this.onFetchLaterDepartures,
    required this.selectedStation,
    required this.availableStations,
    required this.onStationChanged,
  });

  final VoidCallback onFetchEarlierDepartures;
  final VoidCallback onFetchLaterDepartures;

  final Match selectedStation;
  final List<Match> availableStations;
  final Stoptimes200Response stoptimes;

  final ValueChanged<Match> onStationChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          spacing: 4,
          children: [
            Expanded(
              child: _DepartureLocation(
                station: selectedStation,
                availableStations: availableStations,
                onChanged: onStationChanged,
              ),
            ),
            OutlinedButton(
              onPressed: onFetchEarlierDepartures,
              child: Text("Früher"),
            ),
          ],
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: stoptimes.stopTimes.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final stoptime = stoptimes.stopTimes[index];
            return _DepartureTile(stoptime: stoptime);
          },
        ),
        OutlinedButton(
          onPressed: onFetchLaterDepartures,
          child: Text("Später"),
        ),
      ],
    );
  }
}

class _DepartureLocation extends StatelessWidget {
  const _DepartureLocation({
    required this.station,
    required this.availableStations,
    required this.onChanged,
  });

  final Match station;
  final List<Match> availableStations;
  final ValueChanged<Match> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        Text(
          "Abfahrten von: ",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Flexible(
          fit: FlexFit.loose,
          child: DropdownButton(
            isExpanded: true,
            items:
                availableStations
                    .map(
                      (station) => DropdownMenuItem(
                        value: station,
                        child: Text(
                          station.name,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                    .toList(),
            value: station,
            isDense: true,
            onChanged: (value) => value != null ? onChanged(value) : null,
          ),
        ),
      ],
    );
  }
}

class _DepartureTile extends StatelessWidget {
  const _DepartureTile({
    required this.stoptime,
  });

  final StopTime stoptime;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:
          () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => JourneyDetailsView(stopTime: stoptime),
            ),
          ),
      leading: _DepartureTime(stoptime: stoptime),
      trailing: switch (stoptime.place.track) {
        final track? => Text("Gl. $track"),
        _ => null,
      },
      title: TrainInfo(stoptime: stoptime),
    );
  }
}

class _DepartureTime extends StatelessWidget {
  const _DepartureTime({
    required this.stoptime,
  });

  final StopTime stoptime;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          stoptime.place.scheduledDeparture?.toTime() ?? "--:--",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        if (stoptime.place.departure case final departure?)
          if (stoptime.realTime)
            Text(
              departure.toTime(),
              style: TextStyle(
                color: stoptime.isSignificantlyDelayed ? Colors.red : Colors.green,
              ),
            ),
      ],
    );
  }
}
