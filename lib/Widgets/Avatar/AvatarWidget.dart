import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final double size;
  final double elevation;

  AvatarWidget({
    this.size = 130,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: this.elevation,
      shape: GenericPattern.CARD_BORDER_RADIUS_HIGHT,
      child: Container(
        height: this.size,
        width: this.size,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            'F',
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
