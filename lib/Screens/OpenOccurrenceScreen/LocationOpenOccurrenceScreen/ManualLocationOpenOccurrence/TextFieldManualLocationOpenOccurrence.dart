import 'package:flutter/material.dart';

class TextFieldManualLocationOpenOccurrence extends StatelessWidget {
  final String hint;

  TextFieldManualLocationOpenOccurrence({@required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: this.hint,
        ),
      ),
    );
  }
}
