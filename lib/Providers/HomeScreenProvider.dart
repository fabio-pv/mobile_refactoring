import 'package:fiscaliza_ja/Models/OccurrenceFilter.dart';
import 'package:flutter/material.dart';

class HomeScreenProvider extends InheritedWidget {
  final Function({OccurrenceFilter occurrenceFilter}) doFilter;
  final OccurrenceFilter occurrenceFilter;
  final Function({bool remove}) headerController;

  HomeScreenProvider({
    Widget child,
    this.doFilter,
    this.occurrenceFilter,
    this.headerController,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static HomeScreenProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<HomeScreenProvider>();
}
