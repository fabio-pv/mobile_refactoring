import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';

class LoadImage extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;

  LoadImage({
    this.width,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width ?? double.maxFinite,
      height: this.height,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(
          this.borderRadius ?? GenericPattern.BORDER_RADIUS,
        ),
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
