import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          'F',
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
