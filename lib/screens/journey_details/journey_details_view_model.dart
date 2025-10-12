import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:motis/motis.dart';
import 'package:rxdart/rxdart.dart';
import 'package:track_map/utils/view_model.dart';

@injectable
class JourneyDetailsViewModel extends ViewModel {
  JourneyDetailsViewModel(@factoryParam this._stopTime, this._motis) {
    unawaited(loadTrip());
  }

  final Motis _motis;

  final StopTime _stopTime;

  Future<void> loadTrip() {
    return _trip$.addStream(
      Stream.fromFuture(
        _motis.getTimetableApi().trip(tripId: _stopTime.tripId).then((result) => result.data),
      ),
    );
  }

  final BehaviorSubject<Itinerary?> _trip$ = BehaviorSubject();
  Stream<Itinerary?> get trip$ => _trip$;
}
