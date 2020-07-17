import 'package:flutter/material.dart';

class LeftHeaderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple,
        heroTag: null,
        child: Icon(
          Icons.widgets,
        ),
      ),
    );
  }
}
