import 'package:flutter/material.dart';

class LeftHeaderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: null,
      backgroundColor: Colors.purple,
      heroTag: null,
      child: Icon(
        Icons.widgets,
      ),
    );
  }
}
