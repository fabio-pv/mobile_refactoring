import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Widgets/IconText/IconText.dart';
import 'package:flutter/material.dart';

class ElementListTabHomeScreen extends StatelessWidget {
  final String name;
  final IconData icon;

  ElementListTabHomeScreen({
    @required this.name,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Card(
        elevation: 3,
        shape: GenericPattern.CARD_BORDER_RADIUS,
        child: InkWell(
          onTap: () {
            print('22222222222222');
          },
          borderRadius: BorderRadius.circular(
            GenericPattern.BORDER_RADIUS
          ),
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: IconText(
              icon: this.icon,
              text: this.name,
            ),
          ),
        ),
      ),
    );
  }
}
