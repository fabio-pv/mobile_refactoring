import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Widgets/IconText/IconText.dart';
import 'package:flutter/material.dart';

class ManualLocationOpenOccurrenceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Card(
            elevation: 5,
            shape: GenericPattern.CARD_BORDER_RADIUS,
            child: Container(
              padding: EdgeInsets.all(15.0),
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Bairro'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
