import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:track_map/models/search_result.dart';
import 'package:track_map/services/search_service.dart';

@injectable
class MapSearchBarController {
  final SearchService _searchService;

  final BehaviorSubject<String> _query = BehaviorSubject();
  late final Stream<List<SearchResult>> _searchResults =
      _query
          .debounceTime(Duration(milliseconds: 500))
          .asyncMap(_searchForQuery)
          .asBroadcastStream();

  MapSearchBarController(this._searchService);

  void changeSearchQuery(String query) => _query.value = query;

  Future<List<SearchResult>> _searchForQuery(String query) async {
    if (query.isEmpty) return [];
    Logger().i("searching: $query");
    try {
      return await _searchService.search(query);
    } catch (err, stack) {
      Logger().w("error while searching", error: err, stackTrace: stack);
      return [];
    }
  }

  Future<List<SearchResult>> findSuggestions() => _searchResults.first;
}
