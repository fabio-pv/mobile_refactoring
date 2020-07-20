import 'package:fiscaliza_ja/Models/OccurrenceStatus.dart';
import 'package:fiscaliza_ja/Utils/DateUtil.dart';
import 'package:fiscaliza_ja/Widgets/IconText/IconText.dart';
import 'package:flutter/material.dart';

class StatisticOccurrenceWidget extends StatelessWidget {
  final String views;
  final String likes;
  final String date;
  final OccurrenceStatus occurrenceStatus;

  StatisticOccurrenceWidget({
    @required this.views,
    @required this.likes,
    @required this.date,
    @required this.occurrenceStatus,
  });

  String color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconText(
          icon: Icons.search,
          text: this.views,
          color: Colors.grey[100],
        ),
        IconText(
          icon: Icons.thumb_up,
          text: this.likes,
          color: Colors.grey[100],
        ),
        IconText(
          icon: Icons.date_range,
          text: DateUtil(dateRaw: this.date).toDateTime(),
          color: Colors.grey[100],
        ),
      ],
    );
  }
}
