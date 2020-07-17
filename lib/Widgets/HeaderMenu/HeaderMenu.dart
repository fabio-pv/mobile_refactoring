import 'package:fiscaliza_ja/Widgets/HeaderMenu/LeftHeaderMenu.dart';
import 'package:fiscaliza_ja/Widgets/HeaderMenu/TitleHeaderMenu.dart';
import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        child: Row(
          children: [
            LeftHeaderMenu(),
            SizedBox(width: 10,),
            TitleHeaderMenu(),
          ],
        ),
      ),
    );
  }
}
