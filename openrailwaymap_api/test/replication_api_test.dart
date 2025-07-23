import 'package:test/test.dart';
import 'package:openrailwaymap_api/openrailwaymap_api.dart';


/// tests for ReplicationApi
void main() {
  final instance = OpenrailwaymapApi().getReplicationApi();

  group(ReplicationApi, () {
    // Replication endpoint
    //
    // The replication timestamp of the OpenStreetMap data
    //
    //Future<ReplicationTimestamp200Response> replicationTimestamp() async
    test('test replicationTimestamp', () async {
      // TODO
    });

  });
}
