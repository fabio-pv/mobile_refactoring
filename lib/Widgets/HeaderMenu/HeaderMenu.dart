import 'package:fiscaliza_ja/Widgets/HeaderMenu/LeftHeaderMenu.dart';
import 'package:fiscaliza_ja/Widgets/HeaderMenu/MenuHeaderMenu.dart';
import 'package:fiscaliza_ja/Widgets/HeaderMenu/RightHeaderMenu.dart';
import 'package:fiscaliza_ja/Widgets/HeaderMenu/TitleHeaderMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HeaderMenu extends StatefulWidget {
  final bool headerHidden;

  HeaderMenu({@required this.headerHidden});

  @override
  _HeaderMenuState createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> {
  bool openMenu = false;

  void menuController() {
    setState(() {
      this.openMenu = !this.openMenu;
    });
    print(this.openMenu);
  }

  @override
  Widget build(BuildContext context) {
    if(widget.headerHidden == true){
      return Container();
    }

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
                  LeftHeaderMenu(
                    menuControllerHandler: this.menuController,
                  ),
                  SizedBox(width: 10),
                  TitleHeaderMenu(),
                ],
              ),
            ),
            RightHeaderMenu(),
            MenuHeaderMenu(
              menuControllerHandler: this.menuController,
              openClose: this.openMenu,
            ),
          ],
        ),
      ),
    );
  }
}
