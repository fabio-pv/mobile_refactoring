import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fiscaliza_ja/Controllers/OccurrenceController.dart';
import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Models/OccurrenceFilter.dart';
import 'package:fiscaliza_ja/Providers/HomeScreenProvider.dart';
import 'package:fiscaliza_ja/Screens/HomeScreen/TabHomeScreen/TabHomeScreen.dart';
import 'package:fiscaliza_ja/Widgets/Occurrence/ListOccurrenceWidget.dart';
import 'package:fiscaliza_ja/Screens/HomeScreen/SearchHomeScreen.dart';
import 'package:fiscaliza_ja/Widgets/HeaderMenu/HeaderMenu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const route = 'home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState(
        occurrenceController: new OccurrenceController(),
      );
}

class _HomeScreenState extends State<HomeScreen> {
  final OccurrenceController occurrenceController;

  _HomeScreenState({this.occurrenceController});

  List<Occurrence> _occurrenceList = [];
  int lastPage;
  OccurrenceFilter _occurrenceFilterCurrent;

  @override
  void initState() {
    this.load();
    super.initState();
  }

  Future<void> load({
    int page = 1,
    String keyword,
    OccurrenceFilter occurrenceFilter,
  }) async {
    try {
      if (this.lastPage == page) {
        setState(() {
          this._occurrenceList = [];
          this._occurrenceFilterCurrent = occurrenceFilter;
        });
      }

      final newOccurrenceList = await this.occurrenceController.getList(
            page: page,
            keyword: keyword,
            occurrenceFilter: this._occurrenceFilterCurrent,
          );

      this.lastPage = page;
      setState(() {
        this._occurrenceList = [...this._occurrenceList, ...newOccurrenceList];
      });
    } catch (e) {
      print(e);
      /*ErrorUtil.error(exception: e);*/
    }
  }

  @override
  Widget build(BuildContext context) {
    return HomeScreenProvider(
      doFilter: this.load,
      occurrenceFilter: this._occurrenceFilterCurrent,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              ListOccurrenceWidget(
                occurrenceList: this._occurrenceList,
                loadHandler: this.load,
              ),
              TabHomeScreen(),
              /*SearchHomeScreen(
              load: this.load,
            ),*/
              HeaderMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
