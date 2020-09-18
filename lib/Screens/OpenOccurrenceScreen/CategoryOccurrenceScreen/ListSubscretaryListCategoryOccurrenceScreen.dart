import 'package:fiscaliza_ja/Models/Subsecretary.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/CategoryOccurrenceScreen/ElementSubscretary.dart';
import 'package:flutter/material.dart';

class ListSubscretaryListCategoryOccurrenceScreen extends StatelessWidget {
  final List<Subsecretary> subsecretaryList;

  ListSubscretaryListCategoryOccurrenceScreen({
    @required this.subsecretaryList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 50,
          right: 50
        ),
        scrollDirection: Axis.horizontal,
        itemCount: this.subsecretaryList.length,
        itemBuilder: (BuildContext context, int index) {
          return ElementSubscretary(
            subsecretary: this.subsecretaryList[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 50,
          );
        },
      ),
    );
  }
}
