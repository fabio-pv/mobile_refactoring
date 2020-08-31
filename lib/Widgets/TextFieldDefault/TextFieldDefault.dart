import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';

class TextFieldDefault extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(GenericPattern.BORDER_RADIUS)
          ),
          hintText: 'Hint aqui',
        ),
      ),
    );
  }
}
