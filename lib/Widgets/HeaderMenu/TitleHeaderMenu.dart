import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TitleHeaderMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        height: 56,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Home',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
        ),
      ),
    );
  }
}
