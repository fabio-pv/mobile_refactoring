import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  IconText({
    @required this.icon,
    @required this.text,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Row(
        children: [
          Icon(
            this.icon,
            color: this.color,
            size: 20,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            this.text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: this.color,
            ),
          ),
        ],
      ),
    );
  }
}
