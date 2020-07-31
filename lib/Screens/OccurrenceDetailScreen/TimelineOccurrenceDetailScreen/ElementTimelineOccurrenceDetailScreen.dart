import 'package:fiscaliza_ja/Models/OccurrenceHistory.dart';
import 'package:flutter/material.dart';

class ElementTimelineOccurrenceDetailScreen extends StatelessWidget {
  final OccurrenceHistory occurrenceHistory;

  ElementTimelineOccurrenceDetailScreen({@required this.occurrenceHistory});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: this.occurrenceHistory.occurrenceStatus.getStatusColor(),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text(
              this.occurrenceHistory.occurrenceStatus.id.toString(),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          child: Text(
            this.occurrenceHistory.occurrenceStatus.nome,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ],
    );
  }
}
