import 'package:flutter/material.dart';

class LocationOpenOccurrenceScreenProvider extends InheritedWidget {
  final Function() doSetCurrentPosition;

  final Function({@required String location}) doSetPositionByString;

  LocationOpenOccurrenceScreenProvider({
    @required Widget child,
    this.doSetCurrentPosition,
    this.doSetPositionByString,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static LocationOpenOccurrenceScreenProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<
          LocationOpenOccurrenceScreenProvider>();
}
