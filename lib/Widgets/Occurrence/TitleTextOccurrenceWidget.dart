import 'package:flutter/material.dart';

class TitleTextOccurrenceWidget extends StatelessWidget {
  final String title;
  final String text;

  TitleTextOccurrenceWidget({
    @required this.title,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            this.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            this.text,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
