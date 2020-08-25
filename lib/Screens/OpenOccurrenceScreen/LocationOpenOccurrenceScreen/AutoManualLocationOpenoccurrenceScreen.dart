import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Providers/LocationOpenOccurrenceScreenProvider.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/ChoiceAutoLocationOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/QuestionLocationOpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AutoManualLocationOpenoccurrenceScreen extends StatefulWidget {
  static const NO_CHOICE = 0;
  static const AUTO_CHOICE = 1;
  static const MANUAL_CHOICE = 2;

  @override
  _AutoManualLocationOpenoccurrenceScreenState createState() =>
      _AutoManualLocationOpenoccurrenceScreenState();
}

class _AutoManualLocationOpenoccurrenceScreenState
    extends State<AutoManualLocationOpenoccurrenceScreen> {
  int choice = 0;
  BuildContext _contextAux;

  Future<void> _choice({int choice}) async {
    setState(() {
      this.choice = choice;
    });

    if (choice == AutoManualLocationOpenoccurrenceScreen.AUTO_CHOICE) {
      await LocationOpenOccurrenceScreenProvider.of(context)
          .doSetCurrentPosition();
    }
  }

  @override
  Widget build(BuildContext context) {
    this._contextAux = context;
    if (this.choice == AutoManualLocationOpenoccurrenceScreen.NO_CHOICE) {
      return QuestionLocationOpenOccurrenceScreen(
        doChoiceHandler: this._choice,
      );
    }

    return Container(
      child: Center(
        child: Icon(
          Icons.location_on,
          size: 40,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
