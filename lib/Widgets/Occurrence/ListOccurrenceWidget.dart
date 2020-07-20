import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Widgets/Occurrence/OccurrenceWidget.dart';
import 'package:flutter/material.dart';

class ListOccurrenceWidget extends StatelessWidget {
  final List<Occurrence> occurrenceList;

  ListOccurrenceWidget({@required this.occurrenceList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(
        top: 130,
        left: 10,
        right: 10,
      ),
      itemCount: this.occurrenceList.length,
      itemBuilder: (BuildContext context, int index) {
        return OccurrenceWidget(
          occurrence: this.occurrenceList[index],
        );
      },
    );
  }
}
