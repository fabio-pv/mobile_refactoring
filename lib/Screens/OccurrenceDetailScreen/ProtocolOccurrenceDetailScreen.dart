import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class ProtocolOccurrenceDetailScreen extends StatelessWidget {
  final String protocol;

  ProtocolOccurrenceDetailScreen({this.protocol});

  @override
  Widget build(BuildContext context) {
    print(this.protocol);
    return CardDefaultOccurrenceDetailScreen(
      width: 200,
      child: Center(
        child: Text('Protocolo: ' + this.protocol),
      ),
    );
  }
}
