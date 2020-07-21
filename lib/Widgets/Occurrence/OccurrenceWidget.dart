import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Widgets/Occurrence/ImageOccurrenceWidget.dart';
import 'package:fiscaliza_ja/Widgets/Occurrence/StatisticOccurrenceWidget.dart';
import 'package:fiscaliza_ja/Widgets/Occurrence/TitleTextOccurrenceWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class OccurrenceWidget extends StatelessWidget {
  final Occurrence occurrence;

  OccurrenceWidget({@required this.occurrence});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: this.occurrence.occurrenceStatus.getStatusColor(),
      margin: EdgeInsets.only(bottom: 40),
      shape: GenericPattern.CARD_BORDER_RADIUS,
      child: InkWell(
        onTap: () {},
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),
          child: Container(
            padding: EdgeInsets.all(20.0),
            width: double.maxFinite,
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageOccurrenceWidget(),
                    SizedBox(width: 15),
                    TitleTextOccurrenceWidget(
                      title: this.occurrence.subsecretary.nome,
                      text: this.occurrence.texto,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                StatisticOccurrenceWidget(
                  views: this.occurrence.visualizacoes.toString(),
                  likes: '22',
                  date: this.occurrence.createdAt,
                  occurrenceStatus: this.occurrence.occurrenceStatus,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
