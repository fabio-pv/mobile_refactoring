import 'package:fiscaliza_ja/Models/Group.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/CategoryOccurrenceScreen/GroupCategoryOccurrenceScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ListCategoryOccurrenceScreen extends StatelessWidget {
  final List<Group> listGroup;

  ListCategoryOccurrenceScreen({
    @required this.listGroup,
  });

  @override
  Widget build(BuildContext context) {

    if(this.listGroup.length == 0){
      return Container();
    }

    return Swiper(
      scrollDirection: Axis.vertical,
      itemCount: this.listGroup.length,
      itemBuilder: (BuildContext context, int index) {
        return GroupCategoryOccurrenceScreen(
          group: this.listGroup[index],
        );
      },
    );
  }
}
