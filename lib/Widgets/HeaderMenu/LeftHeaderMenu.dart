import 'package:flutter/material.dart';

class LeftHeaderMenu extends StatelessWidget {
  final Function() menuControllerHandler;

  LeftHeaderMenu({@required this.menuControllerHandler});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: this.menuControllerHandler,
      backgroundColor: Colors.purple,
      heroTag: null,
      child: Icon(
        Icons.widgets,
      ),
    );
  }
}
