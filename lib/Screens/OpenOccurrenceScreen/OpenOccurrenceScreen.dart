import 'package:fiscaliza_ja/Providers/OpenOccurrenceScreenProvider.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/FileOpenOccurrenceScreen/FileOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/HeaderOpenOccurrenceScreen/HeaderOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/LocationOpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class OpenOccurrenceScreen extends StatefulWidget {
  @override
  _OpenOccurrenceScreenState createState() => _OpenOccurrenceScreenState();
}

class _OpenOccurrenceScreenState extends State<OpenOccurrenceScreen> {
  List<String> _files;

  void _saveFiles({List<String> files}){
    print(files);
  }

  @override
  Widget build(BuildContext context) {
    return OpenOccurrenceScreenProvider(
      doReturnFiles: this._saveFiles,
      child: Scaffold(
        body: Stack(
          children: [
            /*FileOpenOccurrenceScreen(),*/
            LocationOpenOccurrenceScreen(),
            HeaderOpenOccurrenceScreen(),
          ],
        ),
      ),
    );
  }
}
