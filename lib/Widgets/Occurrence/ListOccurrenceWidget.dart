import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Widgets/Occurrence/OccurrenceWidget.dart';
import 'package:flutter/material.dart';

class ListOccurrenceWidget extends StatefulWidget {
  final List<Occurrence> occurrenceList;
  final Function({int page}) loadHandler;

  ListOccurrenceWidget({
    @required this.occurrenceList,
    @required this.loadHandler,
  });

  @override
  _ListOccurrenceWidgetState createState() => _ListOccurrenceWidgetState();
}

class _ListOccurrenceWidgetState extends State<ListOccurrenceWidget> {
  int currentPage = 1;

  void shouldChangePage({
    int currentIndex,
  }) {
    if ((currentIndex + 1) < this.widget.occurrenceList.length) {
      return;
    }

    this.currentPage++;
    this.widget.loadHandler(page: this.currentPage);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(
        top: 140,
        left: 10,
        right: 10,
      ),
      itemCount: this.widget.occurrenceList.length,
      itemBuilder: (BuildContext context, int index) {
        this.shouldChangePage(currentIndex: index);
        return OccurrenceWidget(
          occurrence: this.widget.occurrenceList[index],
        );
      },
    );
  }
}
