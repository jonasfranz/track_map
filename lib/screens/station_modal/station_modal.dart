import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:track_map/config.dart';
import 'package:url_launcher/url_launcher_string.dart';

class StationModal extends StatelessWidget {
  const StationModal({super.key, required this.properties});

  final Map<String, dynamic> properties;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 8,
      children: [
        if (properties["wikidata"] case final String wikidataId?)
          _HeaderImage(wikidataId: wikidataId)
        else
          SizedBox(height: 16),
        SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(bottom: 16),
          child: Row(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _StationTitle(properties: properties),
                    if (properties["operator"] case final String operator?)
                      Text(operator, style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
              if (properties["wikipedia"] case final String wikipedia?)
                IconButton(
                  onPressed:
                      () => launchUrlString(
                        "https://en.wikipedia.org/wiki/$wikipedia",
                        mode: LaunchMode.inAppBrowserView,
                      ),
                  icon: Icon(Icons.chrome_reader_mode),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class _StationTitle extends StatelessWidget {
  const _StationTitle({required this.properties});

  final dynamic properties;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: properties["name"], style: TextStyle(fontWeight: FontWeight.bold)),
          if (properties["label"] case final String label?)
            TextSpan(text: " ($label)", style: TextStyle(fontWeight: FontWeight.w200)),
        ],
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}

class _HeaderImage extends StatelessWidget {
  const _HeaderImage({required this.wikidataId});

  final String wikidataId;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Image(
          loadingBuilder:
              (context, child, loadingProgress) =>
                  loadingProgress == null ? child : Center(child: CircularProgressIndicator()),
          errorBuilder: (context, error, stackTrace) {
            Logger().w("error loading image", error: error, stackTrace: stackTrace);
            return Center(child: Icon(Icons.image_not_supported));
          },
          image: NetworkImage("${TrackMapConfig.backendUrl}/api/wikidata/$wikidataId"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
