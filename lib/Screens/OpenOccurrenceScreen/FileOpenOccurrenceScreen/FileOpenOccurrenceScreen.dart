import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/FileOpenOccurrenceScreen/CameraOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/FileOpenOccurrenceScreen/HeaderFileOpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class FileOpenOccurrenceScreen extends StatefulWidget {
  @override
  _FileOpenOccurrenceScreenState createState() =>
      _FileOpenOccurrenceScreenState();
}

class _FileOpenOccurrenceScreenState extends State<FileOpenOccurrenceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CameraOpenOccurrenceScreen(),
          HeaderFileOpenOccurrenceScreen(),
        ],
      ),
    );
  }
}
