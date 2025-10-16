/// Example:
/// ```json
/// {
//   "connection": true,
//   "serviceLevel": "AVAILABLE_SERVICE",
//   "gpsStatus": "VALID",
//   "internet": "HIGH",
//   "latitude": 50.1932905,
//   "longitude": 8.2609683333,
//   "tileY": 21,
//   "tileX": -96,
//   "series": "412",
//   "serverTime": 1760614165066,
//   "speed": 248.9,
//   "trainType": "ICE",
//   "tzn": "ICE9457",
//   "wagonClass": "FIRST",
//   "connectivity": {
//     "currentState": "WEAK",
//     "nextState": "NO_INFO",
//     "remainingTimeSeconds": 3000
//   },
//   "bapInstalled": true
// }
/// ```
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ice_status.freezed.dart';
part 'ice_status.g.dart';

@freezed
abstract class ICEStatus with _$ICEStatus {
  const factory ICEStatus({
    required double latitude,
    required double longitude,
    required double speed,
  }) = _ICEStatus;

  factory ICEStatus.fromJson(Map<String, dynamic> json) => _$ICEStatusFromJson(json);
}
