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
    final focusNode = useFocusNode();
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
          child: SearchAnchor(
            isFullScreen: false,
            textInputAction: TextInputAction.done,
            shrinkWrap: true,
            builder:
                (context, controller) => SearchBar(
                  padding: const WidgetStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0),
                  ),

                  focusNode: focusNode,
                  controller: controller,
                  trailing: [
                    IconButton(onPressed: onGoToCurrentLocation, icon: Icon(Icons.my_location)),
                  ],
                  leading: const Icon(Icons.search),

                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                ),
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
                    focusNode.unfocus();
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
