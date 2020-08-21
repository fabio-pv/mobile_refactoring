import 'package:flutter/material.dart';

class ElementStepHeaderOpenOccurrenceScreen extends StatelessWidget {
  final IconData icon;
  final bool current;

  ElementStepHeaderOpenOccurrenceScreen({
    @required this.icon,
    this.current = false,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      mini: true,
      elevation: 5,
      onPressed: () {},
      backgroundColor: (this.current == false ? Colors.grey : null),
      child: Icon(this.icon),
    );
  }
}
