import 'package:flutter/material.dart';

class LocationOpenOccurrenceScreenProvider extends InheritedWidget {
  final Function() doSetCurrentPosition;

  LocationOpenOccurrenceScreenProvider({
    @required Widget child,
    this.doSetCurrentPosition,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static LocationOpenOccurrenceScreenProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<
          LocationOpenOccurrenceScreenProvider>();
}
