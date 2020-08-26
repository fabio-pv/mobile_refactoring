import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Providers/LocationOpenOccurrenceScreenProvider.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/AutoLocationOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/ManualLocationOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/QuestionLocationOpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:geolocator/geolocator.dart';

class AutoManualLocationOpenoccurrenceScreen extends StatefulWidget {
  static const NO_CHOICE = 0;
  static const AUTO_CHOICE = 1;
  static const MANUAL_CHOICE = 2;

  final Placemark placemark;

  AutoManualLocationOpenoccurrenceScreen({@required this.placemark});

  @override
  _AutoManualLocationOpenoccurrenceScreenState createState() =>
      _AutoManualLocationOpenoccurrenceScreenState();
}

class _AutoManualLocationOpenoccurrenceScreenState
    extends State<AutoManualLocationOpenoccurrenceScreen> {
  int choice = 0;

  Future<void> _choice({int choice}) async {
    if (choice == AutoManualLocationOpenoccurrenceScreen.AUTO_CHOICE) {
      await LocationOpenOccurrenceScreenProvider.of(context)
          .doSetCurrentPosition();
    }

    setState(() {
      this.choice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (this.choice == AutoManualLocationOpenoccurrenceScreen.NO_CHOICE) {
      return QuestionLocationOpenOccurrenceScreen(
        doChoiceHandler: this._choice,
      );
    }

    if (this.choice == AutoManualLocationOpenoccurrenceScreen.AUTO_CHOICE) {
      return AutoLocationOpenOccurrenceScreen(
        placemark: widget.placemark,
      );
    }

    if(this.choice == AutoManualLocationOpenoccurrenceScreen.MANUAL_CHOICE){
      return ManualLocationOpenOccurrenceScreen();
    }
  }
}
