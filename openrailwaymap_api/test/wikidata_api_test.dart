import 'package:test/test.dart';
import 'package:openrailwaymap_api/openrailwaymap_api.dart';


/// tests for WikidataApi
void main() {
  final instance = OpenrailwaymapApi().getWikidataApi();

  group(WikidataApi, () {
    // Find the image from Wikidata
    //
    // The Wikidata image endpoint returns the URL of the image thumbnail for a given Wikidata entity. 
    //
    //Future wikidataImage(String entity) async
    test('test wikidataImage', () async {
      // TODO
    });

  });
}
