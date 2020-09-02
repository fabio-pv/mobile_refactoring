import 'package:fiscaliza_ja/Models/Group.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/DescriptionOccurrenceScreen/RowDescriptionOccurrenceScreeen.dart';
import 'package:flutter/material.dart';

class ListDescriptionOccurrenceScreen extends StatelessWidget {
  final List<Group> listGroup;

  ListDescriptionOccurrenceScreen({
    @required this.listGroup,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(
        top: 100,
      ),
      itemCount: this.listGroup.length,
      itemBuilder: (BuildContext context, int index) {
        return RowDescriptionOccurrenceScreeen(
          nameGroup: this.listGroup[index].nome,
          subcretaries: this.listGroup[index].subsecretaries,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 30,
        );
      },
    );
  }
}
