import 'package:flutter/material.dart';

class TextFieldManualLocationOpenOccurrence extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final double width;

  TextFieldManualLocationOpenOccurrence({
    @required this.hint,
    @required this.width,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      child: TextField(
        controller: this.controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: this.hint,
        ),
      ),
    );
  }
}
