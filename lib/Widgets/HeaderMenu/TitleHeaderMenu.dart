import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TitleHeaderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: GenericPattern.CARD_BORDER_RADIUS,
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        height: 50,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Início',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
