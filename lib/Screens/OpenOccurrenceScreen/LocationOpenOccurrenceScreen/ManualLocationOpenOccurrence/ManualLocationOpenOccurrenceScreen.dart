import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/ManualLocationOpenOccurrence/ElementManualLocationOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Widgets/IconText/IconText.dart';
import 'package:fiscaliza_ja/Widgets/TextFieldDefault/TextFieldDefault.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ManualLocationOpenOccurrenceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ElementManualLocationOpenOccurrenceScreen(),
            ElementManualLocationOpenOccurrenceScreen(),
            ElementManualLocationOpenOccurrenceScreen(),
          ],
        ),
      ),
    );
  }
}
