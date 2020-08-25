import 'package:fiscaliza_ja/Providers/OpenOccurrenceScreenProvider.dart';
import 'package:flutter/material.dart';

class ElementStepHeaderOpenOccurrenceScreen extends StatelessWidget {
  final IconData icon;
  final bool current;
  final int step;

  ElementStepHeaderOpenOccurrenceScreen({
    @required this.icon,
    this.current = false,
    this.step,
  });

  BuildContext _contextAux;

  void toStep() {
    if (this.current == false) {
      return;
    }

    OpenOccurrenceScreenProvider.of(this._contextAux).doToStep(
      step: this.step,
    );
  }

  @override
  Widget build(BuildContext context) {
    this._contextAux = context;
    return FloatingActionButton(
      heroTag: null,
      mini: true,
      elevation: 5,
      onPressed: this.toStep,
      backgroundColor: (this.current == false ? Colors.grey : null),
      child: Icon(this.icon),
    );
  }
}
