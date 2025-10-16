import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:track_map/models/ice_status.dart';

@injectable
class ICEPortalService {
  Stream<ICEStatus?> pollStatus() =>
      Stream.periodic(Duration(seconds: 10)).asyncMap((_) => fetchStatus());

  Future<ICEStatus?> fetchStatus() async {
    try {
      final result = await Dio().get<Map<String, dynamic>>("https://iceportal.de/api1/rs/status");
      final json = result.data;
      if (json == null) return null;
      return ICEStatus.fromJson(json);
    } catch (_) {
      return null;
    }
  }
}
