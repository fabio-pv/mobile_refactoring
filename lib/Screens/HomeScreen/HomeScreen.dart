import 'package:fiscaliza_ja/Controllers/OccurrenceController.dart';
import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Screens/HomeScreen/ListHomeScreen.dart';
import 'package:fiscaliza_ja/Screens/HomeScreen/SearchHomeScreen.dart';
import 'package:fiscaliza_ja/Services/OccurrenceService.dart';
import 'package:fiscaliza_ja/Utils/ErroUtil.dart';
import 'package:fiscaliza_ja/Widgets/HeaderMenu/HeaderMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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

  List<Occurrence> _occurrenceList;

  @override
  void initState() {
    this.load();
    super.initState();
  }

  Future<void> load() async {
    try {
      this._occurrenceList = await this.occurrenceController.getList();

      setState(() {
        this._occurrenceList = this._occurrenceList;
      });

    } catch (e) {
      print(e);
      /*ErrorUtil.error(exception: e);*/
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            10.0,
          ),
          child: Stack(
            children: [
              ListHomeScreen(),
              HeaderMenu(),
              SearchHomeScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
