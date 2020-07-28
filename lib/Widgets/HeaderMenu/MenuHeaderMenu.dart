import 'package:fiscaliza_ja/Widgets/Avatar/AvatarWidget.dart';
import 'package:fiscaliza_ja/Widgets/HeaderMenu/ContentElementHeaderMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MenuHeaderMenu extends StatelessWidget {
  final Function() menuControllerHandler;
  final bool openClose;

  MenuHeaderMenu({
    @required this.menuControllerHandler,
    @required this.openClose,
  });

  @override
  Widget build(BuildContext context) {
    if (this.openClose == false) {
      return Container();
    }
    return Container(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: this.menuControllerHandler,
                ),
              ),
              Center(
                child: AvatarWidget(),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Chip(
                  label: Text('fabiopv1994@gmail.com'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              ContentElementHeaderMenu(),
            ],
          )
        ],
      ),
    );
  }
}
