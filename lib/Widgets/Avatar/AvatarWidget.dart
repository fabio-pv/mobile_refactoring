import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final double size;

  AvatarWidget({this.size = 130});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.size,
      width: this.size,
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
