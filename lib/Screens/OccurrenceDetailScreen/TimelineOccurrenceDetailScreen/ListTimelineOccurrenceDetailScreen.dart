import 'package:fiscaliza_ja/Models/OccurrenceHistory.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/TimelineOccurrenceDetailScreen/ElementTimelineOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class ListTimelineOccurrenceDetailScreen extends StatelessWidget {
  final List<OccurrenceHistory> occurrenceHistory;

  ListTimelineOccurrenceDetailScreen({@required this.occurrenceHistory});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: this.occurrenceHistory.length,
        itemBuilder: (BuildContext context, int index) {
          return ElementTimelineOccurrenceDetailScreen(
            occurrenceHistory: this.occurrenceHistory[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) => Container(
          height: 20,
          child: Align(
            alignment: Alignment(-0.95, 0.0),
            child: VerticalDivider(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
