import 'package:flutter/material.dart';
import 'package:motis/motis.dart';
import 'package:track_map/widgets/mode_icon.dart';

class TrainInfo extends StatelessWidget {
  const TrainInfo({
    super.key,
    required this.stoptime,
  });

  final StopTime stoptime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Chip(
          avatar: Icon(stoptime.mode.icon),
          label: Text(stoptime.displayName),
        ),
        Icon(Icons.arrow_right),
        Expanded(
          child: Text(
            stoptime.headsign,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
