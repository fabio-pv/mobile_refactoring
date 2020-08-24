import 'package:fiscaliza_ja/Providers/OpenOccurrenceScreenProvider.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/FileOpenOccurrenceScreen/CameraOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/FileOpenOccurrenceScreen/FileOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/HeaderOpenOccurrenceScreen/HeaderOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/LocationOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/StepsWidgetOpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class OpenOccurrenceScreen extends StatefulWidget {
  @override
  _OpenOccurrenceScreenState createState() => _OpenOccurrenceScreenState();
}

class _OpenOccurrenceScreenState extends State<OpenOccurrenceScreen> {
  int _currentStep = 0;
  List<String> _files = [];

  void _nextStep() {
    setState(() {
      this._currentStep++;
    });
  }

  void _previousStep() {
    setState(() {
      this._currentStep--;
    });
  }

  void _toStep({@required int step}) {
    setState(() {
      this._currentStep = step;
    });
  }

  void _saveFiles({List<String> files}) {
    print(files);
  }

  @override
  Widget build(BuildContext context) {
    return OpenOccurrenceScreenProvider(
      doNextStep: this._nextStep,
      doPrevious: this._previousStep,
      doToStep: this._toStep,
      doReturnFiles: this._saveFiles,
      child: Scaffold(
        body: Stack(
          children: [
            if (this._currentStep ==
                StepsWidgetOpenOccurrenceScreen.FILE_STEP) ...[
              CameraOpenOccurrenceScreen(
                files: this._files,
              ),
            ],
            if (this._currentStep ==
                StepsWidgetOpenOccurrenceScreen.LOCATION_STEP) ...[
              LocationOpenOccurrenceScreen(),
            ],
            HeaderOpenOccurrenceScreen(
              step: this._currentStep,
            ),
          ],
        ),
      ),
    );
  }
}
