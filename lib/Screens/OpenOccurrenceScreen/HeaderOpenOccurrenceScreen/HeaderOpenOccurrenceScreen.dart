import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/HeaderOpenOccurrenceScreen/StepsHeaderOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/HeaderOpenOccurrenceScreen/TopHeaderOpenOccurrenceScrren.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HeaderOpenOccurrenceScreen extends StatelessWidget {
  final int step;

  HeaderOpenOccurrenceScreen({@required this.step});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 30.0,
        left: 5.0,
        right: 5.0,
      ),
      child: Column(
        children: [
          TopHeaderOpenOccurrenceScrren(
            step: this.step,
          ),
          StepsHeaderOpenOccurrenceScreen(),
        ],
      ),
    );
  }
}
