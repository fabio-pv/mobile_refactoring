import 'package:flutter/material.dart';

class LeftHeaderMenu extends StatelessWidget {
  final Function() menuControllerHandler;

  LeftHeaderMenu({@required this.menuControllerHandler});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 4,
      onPressed: this.menuControllerHandler,
      backgroundColor: Theme.of(context).primaryColor,
      heroTag: null,
      child: Icon(
        Icons.widgets,
      ),
    );
  }
}
