import 'package:test/test.dart';
import 'package:openrailwaymap_api/openrailwaymap_api.dart';


/// tests for SearchApi
void main() {
  final instance = OpenrailwaymapApi().getSearchApi();

  group(SearchApi, () {
    // Facility search
    //
    // The facility endpoint returns detail of a facility (station, junction, yard, …) by its name, UIC reference or reference.  The parameters q, name, ref and uic_ref are mutually exclusive.  It takes the first keyword of (name,uicref,ref) and the optional the operator to search for the data. 
    //
    //Future<BuiltList<SearchFacilities200ResponseInner>> searchFacilities({ String q, String name, String ref, String uicRef, int limit }) async
    test('test searchFacilities', () async {
      // TODO
    });

    // Milestone search
    //
    // The milestone endpoint returns the position of milestones or other items such as signals or level crossings with a mapped position on a line.  The API will return the features within a maximum distance of 10 km (hardcoded). The presence of an `operator=*` tag on the tracks is honoured, it will be used to distinguish reference numbers used by different infrastructure operators and/or in different countries.  Mileage is read from the OSM tags `railway:position=*` and `railway:position:exact=*` with precedence of the exact mileage. The tracks must be tagged with a reference number (OSM tag `ref=*`).  The tracks must not tagged with `service=*` (this condition does not apply to tracks with `usage=industrial/military/test`).  Negative mileage is supported but gaps in mileage or duplicated positions (if railway lines are reroute) are not supported. For example, you cannot query for `16.8+200` or things like that. 
    //
    //Future<BuiltList<SearchMilestones200ResponseInner>> searchMilestones(String ref, num position, { int limit }) async
    test('test searchMilestones', () async {
      // TODO
    });

  });
}
