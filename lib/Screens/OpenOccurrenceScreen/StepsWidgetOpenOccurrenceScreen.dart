import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/FileOpenOccurrenceScreen/FileOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/LocationOpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class StepsWidgetOpenOccurrenceScreen {
  static const int FILE_STEP = 0;
  static const int LOCATION_STEP = 1;
  static const List<String> textsHeaderStep = [
    'Tire fotos para a ocorrencia',
    'Local da ocorrência',
  ];

  static String textHeaderStep({@required int step}) {
    return textsHeaderStep[step];
  }
}
