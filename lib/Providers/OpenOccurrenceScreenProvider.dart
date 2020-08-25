import 'package:flutter/material.dart';

class OpenOccurrenceScreenProvider extends InheritedWidget {
  final Function({List<String> files}) doReturnFiles;
  final Function() doNextStep;
  final Function() doPrevious;
  final Function({@required int step}) doToStep;

  OpenOccurrenceScreenProvider({
    @required Widget child,
    this.doReturnFiles,
    this.doNextStep,
    this.doPrevious,
    this.doToStep,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static OpenOccurrenceScreenProvider of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<OpenOccurrenceScreenProvider>();
}
