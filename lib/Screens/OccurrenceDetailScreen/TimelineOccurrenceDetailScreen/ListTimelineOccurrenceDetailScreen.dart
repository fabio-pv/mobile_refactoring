import 'package:fiscaliza_ja/Models/OccurrenceHistory.dart';
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
          return Container(
            child: Text('22222222222'),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Container(),
      ),
    );
  }
}
