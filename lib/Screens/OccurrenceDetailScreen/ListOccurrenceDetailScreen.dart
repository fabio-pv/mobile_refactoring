import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ProtocolOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class ListOccurrenceDetailScreen extends StatelessWidget {
  final Occurrence occurrence;

  ListOccurrenceDetailScreen({@required this.occurrence});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 100,
      ),
      children: [
        ProtocolOccurrenceDetailScreen(
          protocol: this.occurrence.codigo,
        ),
      ],
    );
  }
}
