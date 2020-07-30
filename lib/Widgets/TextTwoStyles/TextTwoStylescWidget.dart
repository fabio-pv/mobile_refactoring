import 'package:flutter/material.dart';

class TextTwoStylesWidget extends StatelessWidget {
  final String textHighlighted;
  final String text;

  TextTwoStylesWidget({
    @required this.textHighlighted,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: this.textHighlighted,
        style: Theme.of(context).textTheme.bodyText1,
        children: [
          TextSpan(
            text: this.text,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
