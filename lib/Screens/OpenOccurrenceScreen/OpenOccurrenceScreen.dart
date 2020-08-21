import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/FileOpenOccurrenceScreen/FileOpenOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/HeaderOpenOccurrenceScreen/HeaderOpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class OpenOccurrenceScreen extends StatefulWidget {
  @override
  _OpenOccurrenceScreenState createState() => _OpenOccurrenceScreenState();
}

class _OpenOccurrenceScreenState extends State<OpenOccurrenceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FileOpenOccurrenceScreen(),
          HeaderOpenOccurrenceScreen(),
        ],
      ),
    );
  }
}
