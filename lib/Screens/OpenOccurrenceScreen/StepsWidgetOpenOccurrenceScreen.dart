import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/FileOpenOccurrenceScreen/FileOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/LocationOpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class StepsWidgetOpenOccurrenceScreen {

  static const int FILE_STEP = 0;
  static const int LOCATION_STEP = 1;

  static List<Widget> _widgets = [
    FileOpenOccurrenceScreen(),
    LocationOpenOccurrenceScreen()
  ];

  static Widget getByIndex({@required int index}) {
    return _widgets[index];
  }

}
