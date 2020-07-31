import 'package:fiscaliza_ja/Models/OccurrenceHistory.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/TitleCarDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/TimelineOccurrenceDetailScreen/ListTimelineOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class TimelineOccurrenceDetailScreen extends StatelessWidget {
  final List<OccurrenceHistory> occurrenceHistory;

  TimelineOccurrenceDetailScreen({@required this.occurrenceHistory});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ListOccurrenceDetailScreen.PADDING_DEFAULT,
        right: ListOccurrenceDetailScreen.PADDING_DEFAULT,
      ),
      child: CardDefaultOccurrenceDetailScreen(
        child: Column(
          children: [
            TitleCarDefaultOccurrenceDetailScreen(
              title: 'Timeline',
            ),
            ListTimelineOccurrenceDetailScreen(
              occurrenceHistory: this.occurrenceHistory,
            ),
          ],
        ),
      ),
    );
  }
}
