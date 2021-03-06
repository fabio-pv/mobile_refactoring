import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';

class CardDefaultOccurrenceDetailScreen extends StatelessWidget {
  final Widget child;
  final double width;
  final double padding;
  final Color color;

  CardDefaultOccurrenceDetailScreen({
    this.child,
    this.width,
    this.padding = 15.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 2,
        color: this.color,
        shape: GenericPattern.CARD_BORDER_RADIUS,
        child: Container(
          width: this.width,
          padding: EdgeInsets.all(this.padding),
          child: this.child,
        ),
      ),
    );
  }
}
