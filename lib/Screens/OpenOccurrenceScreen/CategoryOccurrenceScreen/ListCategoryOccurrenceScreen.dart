import 'package:fiscaliza_ja/Models/Group.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/CategoryOccurrenceScreen/GroupCategoryOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class ListCategoryOccurrenceScreen extends StatelessWidget {
  final List<Group> listGroup;

  ListCategoryOccurrenceScreen({
    @required this.listGroup,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.listGroup.length,
      itemBuilder: (BuildContext context, int index) {
        return GroupCategoryOccurrenceScreen(
          group: this.listGroup[index],
        );
      },
    );
  }
}
