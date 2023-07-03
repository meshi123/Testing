import 'package:flutter/material.dart';

import '../../models/event_data.dart';

class ClockTile extends StatelessWidget {
  const ClockTile({
    super.key,
    required this.eventData,
  });

  final EventData eventData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(eventData.title),
          const SizedBox(height: 10),
          Text(eventData.description),
        ],
      ),
    );
  }
}
