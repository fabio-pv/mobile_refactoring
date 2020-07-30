import 'package:flutter/material.dart';

class TitleCarDefaultOccurrenceDetailScreen extends StatelessWidget {
  final String title;

  TitleCarDefaultOccurrenceDetailScreen({this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        this.title,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }
}
