import 'package:fiscaliza_ja/Utils/DateUtil.dart';
import 'package:fiscaliza_ja/Widgets/IconText/IconText.dart';
import 'package:flutter/material.dart';

class StatisticOccurrenceWidget extends StatelessWidget {
  final String views;
  final String likes;
  final String date;

  StatisticOccurrenceWidget({
    @required this.views,
    @required this.likes,
    @required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconText(
          icon: Icons.search,
          text: this.views,
        ),
        IconText(
          icon: Icons.thumb_up,
          text: this.likes,
        ),
        IconText(
          icon: Icons.date_range,
          text: DateUtil(dateRaw: this.date).toDateTime(),
        ),
      ],
    );
  }
}
