import 'package:fiscaliza_ja/Models/Subsecretary.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/DescriptionOccurrenceScreen/ElementRowDescriptionOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class RowDescriptionOccurrenceScreeen extends StatelessWidget {
  final List<Subsecretary> subcretaries;
  final String nameGroup;

  RowDescriptionOccurrenceScreeen({
    @required this.subcretaries,
    @required this.nameGroup,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 60),
            child: Text(
              this.nameGroup,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 130,
            child: ListView.separated(
              padding: EdgeInsets.only(
                left: 60,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: this.subcretaries.length,
              itemBuilder: (BuildContext context, int index) {
                return ElementRowDescriptionOccurrenceScreen(
                  subsecretary: this.subcretaries[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 20,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
