import 'package:fiscaliza_ja/WidgetPatterns/CardBorderRadius.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TitleHeaderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: CardBorderRadius.pattern(),
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        height: 56,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Home',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}