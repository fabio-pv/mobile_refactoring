import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/OccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ProtocolOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class ListOccurrenceDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 100,
      ),
      children: [
        ProtocolOccurrenceDetailScreen(),
      ],
    );
  }
}
