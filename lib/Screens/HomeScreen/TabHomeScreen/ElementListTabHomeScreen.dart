import 'package:fiscaliza_ja/Models/OccurrenceFilter.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Widgets/IconText/IconText.dart';
import 'package:flutter/material.dart';

class ElementListTabHomeScreen extends StatelessWidget {
  final OccurrenceFilter occurrenceFilter;

  ElementListTabHomeScreen({@required this.occurrenceFilter});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Card(
        elevation: 3,
        shape: GenericPattern.CARD_BORDER_RADIUS,
        child: InkWell(
          onTap: () {
            print(this.occurrenceFilter.filter);
            print(this.occurrenceFilter.value);
          },
          borderRadius: BorderRadius.circular(GenericPattern.BORDER_RADIUS),
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: IconText(
              icon: Icons.headset_mic,
              text: this.occurrenceFilter.name,
            ),
          ),
        ),
      ),
    );
  }
}
