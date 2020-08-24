import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/HeaderOpenOccurrenceScreen/ElementStepHeaderOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/StepsWidgetOpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class StepsHeaderOpenOccurrenceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            ElementStepHeaderOpenOccurrenceScreen(
              icon: Icons.photo_camera,
              current: true,
              step: StepsWidgetOpenOccurrenceScreen.FILE_STEP,
            ),
            ElementStepHeaderOpenOccurrenceScreen(
              icon: Icons.add_location,
              current: true,
              step: StepsWidgetOpenOccurrenceScreen.LOCATION_STEP,
            ),
            ElementStepHeaderOpenOccurrenceScreen(
              icon: Icons.description,
            ),
            ElementStepHeaderOpenOccurrenceScreen(
              icon: Icons.send,
            ),
          ],
        ),
      ],
    );
  }
}
