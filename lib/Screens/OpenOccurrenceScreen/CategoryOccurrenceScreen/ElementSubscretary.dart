import 'package:fiscaliza_ja/Models/Subsecretary.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/material.dart';

class ElementSubscretary extends StatelessWidget {
  final Subsecretary subsecretary;

  ElementSubscretary({
    @required this.subsecretary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: GenericPattern.CARD_BORDER_RADIUS,
        elevation: 3,
        child: Container(
          width: 200,
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
