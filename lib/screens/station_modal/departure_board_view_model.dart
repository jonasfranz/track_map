import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:motis/motis.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class DepartureBoardViewModel {
  DepartureBoardViewModel(
    @factoryParam this._stopName,
    @factoryParam this._coordinates,
    this._motis,
  ) {
    fetchStopTimes();
  }

  static const _numberOfDepartures = 3;

  final String _stopName;
  final LatLng _coordinates;

  final Motis _motis;

  final BehaviorSubject<List<Match>?> _stations$ = BehaviorSubject();
  late final Stream<List<Match>?> stations$ = _stations$.stream;

  late final BehaviorSubject<Match> selectedStation$ = BehaviorSubject();

  final BehaviorSubject<Stoptimes200Response?> _stopTimes$ = BehaviorSubject();
  late final Stream<Stoptimes200Response?> stopTimes$ = _stopTimes$.stream;

  Future<List<Match>?> _fetchPossibleStations() async {
    final stations = await _motis.getGeocodeApi().geocode(
      text: _stopName,
      place: "${_coordinates.latitude},${_coordinates.longitude}",
      type: LocationType.STOP,
    );
    final result = stations.data;
    _stations$.add(result);
    return result;
  }

  Future<Stoptimes200Response?> _fetchStopTimes() async {
    final stations = await _fetchPossibleStations();
    final station = stations?.firstOrNull;
    if (station != null) {
      return _fetchStopTimesOfStation(station);
    }
    return null;
  }

  Future<Stoptimes200Response?> _fetchStopTimesOfStation(Match station) async {
    selectedStation$.add(station);
    return (await _motis.getTimetableApi().stoptimes(
      stopId: station.id,
      n: _numberOfDepartures,
    )).data;
  }

  void changeStation(Match newStation) {
    _stopTimes$.addStream(
      Stream.fromFuture(_fetchStopTimesOfStation(newStation)),
    );
  }

  void fetchStopTimes() {
    _stopTimes$.addStream(Stream.fromFuture(_fetchStopTimes()));
  }

  void fetchLaterDepartures() {
    final lastCall = _stopTimes$.valueOrNull;
    if (lastCall == null) return;
    final stopId = lastCall.place.stopId;
    if (stopId == null) return;
    _stopTimes$.addStream(
      Stream.fromFuture(() async {
        final result = await _motis
            .getTimetableApi()
            .stoptimes(
              stopId: stopId,
              n: _numberOfDepartures,
              pageCursor: lastCall.nextPageCursor,
            )
            .then((result) => result.data);
        return result?.copyWith(
          stopTimes: [
            ...lastCall.stopTimes,
            ...result.stopTimes,
          ],
          previousPageCursor: lastCall.previousPageCursor,
        );
      }()),
    );
  }

  void fetchEarlierDepartures() {
    final lastCall = _stopTimes$.valueOrNull;
    if (lastCall == null) return;
    final stopId = lastCall.place.stopId;
    if (stopId == null) return;
    _stopTimes$.addStream(
      Stream.fromFuture(() async {
        final result = await _motis
            .getTimetableApi()
            .stoptimes(
              stopId: stopId,
              n: _numberOfDepartures,
              pageCursor: lastCall.previousPageCursor,
            )
            .then((result) => result.data);
        return result?.copyWith(
          stopTimes: [
            ...result.stopTimes,
            ...lastCall.stopTimes,
          ],
          nextPageCursor: lastCall.nextPageCursor,
        );
      }()),
    );
  }

  Future<void> dispose() async {
    await _stopTimes$.close();
  }
}
