import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  IconText({
    @required this.icon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Row(
        children: [
          Icon(this.icon),
          SizedBox(
            width: 5,
          ),
          Text(this.text)
        ],
      ),
    );
  }
}
