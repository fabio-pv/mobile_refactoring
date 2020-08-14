import 'package:flutter/material.dart';

class CameraOpenOccurrenceScreenProvider extends InheritedWidget {
  final Function({int index}) doRemoveFile;

  CameraOpenOccurrenceScreenProvider({
    Widget child,
    this.doRemoveFile,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static CameraOpenOccurrenceScreenProvider of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<CameraOpenOccurrenceScreenProvider>();
}
