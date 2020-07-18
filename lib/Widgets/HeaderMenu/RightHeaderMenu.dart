import 'package:fiscaliza_ja/WidgetPatterns/CardBorderRadius.dart';
import 'package:flutter/material.dart';

class RightHeaderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        mini: true,
        heroTag: null,
        child: Icon(
          Icons.face,
          color: Colors.black,
        ),
      ),
    );
  }
}
