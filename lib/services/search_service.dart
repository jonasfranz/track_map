import 'package:injectable/injectable.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:openrailwaymap_api/openrailwaymap_api.dart';
import 'package:track_map/models/search_result.dart';

@Singleton()
class SearchService {
  final SearchApi _searchApi;

  SearchService(this._searchApi);

  Future<List<SearchResult>> search(String query) async {
    final results = await _searchApi.searchFacilities(q: query);
    return results.data
            ?.map(
              (result) => switch (result) {
                SearchFacilities200ResponseInner(
                  name: final String name?,
                  railwayRef: final String? abbrev,
                  // the api returns lat and lon wrongly
                  latitude: final num lon?,
                  longitude: final num lat?,
                ) =>
                  SearchResult(
                    name: name,
                    abbrev: abbrev,
                    position: LatLng(lat.toDouble(), lon.toDouble()),
                  ),
                _ => null,
              },
            )
            .nonNulls
            .toList() ??
        [];
  }
}
