import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:track_map/screens/search/map_search_bar_controller.dart';

import '../../dependency_injection.dart';

class MapSearchBar extends HookWidget {
  const MapSearchBar({
    super.key,
    required this.onSelectLocation,
    required this.onGoToCurrentLocation,
  });

  final ValueChanged<LatLng> onSelectLocation;
  final VoidCallback onGoToCurrentLocation;

  @override
  Widget build(BuildContext context) {
    final viewController = useMemoized<MapSearchBarController>(getIt.call);
    final searchController = useSearchController();
    useEffect(() {
      void listenToQuery() => viewController.changeSearchQuery(searchController.text);
      searchController.addListener(listenToQuery);
      return () => searchController.removeListener(listenToQuery);
    }, [viewController, searchController]);
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 720),
          child: SearchAnchor.bar(
            isFullScreen: false,
            textInputAction: TextInputAction.done,
            shrinkWrap: true,
            barTrailing: [
              IconButton(onPressed: onGoToCurrentLocation, icon: Icon(Icons.my_location)),
            ],
            searchController: searchController,
            suggestionsBuilder: (context, controller) async {
              final results = await viewController.findSuggestions();
              return results.map(
                (result) => ListTile(
                  title: Text(result.name),
                  subtitle: switch (result.abbrev) {
                    final String abbrev? => Text(abbrev),
                    null => null,
                  },
                  onTap: () {
                    onSelectLocation(result.position);
                    controller.closeView("");
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      FocusScope.of(context).unfocus();
                    });
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
