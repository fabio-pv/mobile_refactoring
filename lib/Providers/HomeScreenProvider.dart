import 'package:fiscaliza_ja/Models/OccurrenceFilter.dart';
import 'package:flutter/material.dart';

class HomeScreenProvider extends InheritedWidget {
  final Function({OccurrenceFilter occurrenceFilter}) doFilter;
   final OccurrenceFilter occurrenceFilter;

  HomeScreenProvider({
    Widget child,
    this.doFilter,
    this.occurrenceFilter,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static HomeScreenProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<HomeScreenProvider>();
}
