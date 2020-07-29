import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';

class ProtocolOccurrenceDetailScreen extends StatelessWidget {
  final String protocol;

  ProtocolOccurrenceDetailScreen({this.protocol});

  @override
  Widget build(BuildContext context) {
    print(this.protocol);
    return Center(
      child: Card(
        elevation: 2,
        shape: GenericPattern.CARD_BORDER_RADIUS,
        child: Container(
          width: 200,
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: Text('Protocolo: ' + this.protocol),
          ),
        ),
      ),
    );
  }
}
