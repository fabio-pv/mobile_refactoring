import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/HeaderOpenOccurrenceScreen/ElementStepHeaderOpenOccurrenceScreen.dart';
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
            ),
            ElementStepHeaderOpenOccurrenceScreen(
              icon: Icons.add_location,
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
