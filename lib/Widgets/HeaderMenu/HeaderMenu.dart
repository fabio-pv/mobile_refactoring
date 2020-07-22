import 'package:fiscaliza_ja/Widgets/HeaderMenu/LeftHeaderMenu.dart';
import 'package:fiscaliza_ja/Widgets/HeaderMenu/MenuHeaderMenu.dart';
import 'package:fiscaliza_ja/Widgets/HeaderMenu/RightHeaderMenu.dart';
import 'package:fiscaliza_ja/Widgets/HeaderMenu/TitleHeaderMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HeaderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  LeftHeaderMenu(),
                  SizedBox(width: 10),
                  TitleHeaderMenu(),
                ],
              ),
            ),
            RightHeaderMenu(),
            MenuHeaderMenu(),
          ],
        ),
      ),
    );
  }
}
