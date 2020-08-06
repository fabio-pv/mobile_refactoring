import 'package:fiscaliza_ja/Controllers/OccurrenceFilterController.dart';
import 'package:fiscaliza_ja/Models/OccurrenceFilter.dart';
import 'package:fiscaliza_ja/Screens/HomeScreen/TabHomeScreen/ElementListTabHomeScreen.dart';
import 'package:flutter/material.dart';

class ListTabHomeScreen extends StatefulWidget {
  @override
  _ListTabHomeScreenState createState() => _ListTabHomeScreenState(
        occurrenceFilterController: new OccurrenceFilterController(),
      );
}

class _ListTabHomeScreenState extends State<ListTabHomeScreen> {
  final OccurrenceFilterController occurrenceFilterController;

  _ListTabHomeScreenState({@required this.occurrenceFilterController});

  List<OccurrenceFilter> _occurrenceFilterList;

  @override
  void initState() {
    this.load();
    super.initState();
  }

  Future<void> load() async {
    try {
      final newOccurrenceFilterList =
          await this.occurrenceFilterController.getList();

      setState(() {
        this._occurrenceFilterList = newOccurrenceFilterList;
      });
    } catch (e) {
      print('Error');
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: this._occurrenceFilterList.length,
        itemBuilder: (BuildContext context, int index) {
          return ElementListTabHomeScreen(
            occurrenceFilter: this._occurrenceFilterList[index],
          );
        },
      ),
    );
  }
}
