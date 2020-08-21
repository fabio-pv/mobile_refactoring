import 'package:flutter/material.dart';

class OpenOccurrenceScreenProvider extends InheritedWidget {
  final Function({List<String> files}) doReturnFiles;

  OpenOccurrenceScreenProvider({
    @required Widget child,
    this.doReturnFiles,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static OpenOccurrenceScreenProvider of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<OpenOccurrenceScreenProvider>();
}
