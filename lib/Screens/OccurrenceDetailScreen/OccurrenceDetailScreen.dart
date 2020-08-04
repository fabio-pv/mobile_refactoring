import 'package:fiscaliza_ja/Controllers/OccurrenceController.dart';
import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/MapOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/HeaderOccurrenceDetail/HeaderOccurrenceDetail.dart';
import 'package:flutter/material.dart';

class OccurrenceDetailScreen extends StatefulWidget {
  static const route = 'occurrence-detail';

  final String uuid;

  OccurrenceDetailScreen({@required this.uuid});

  @override
  _OccurrenceDetailScreenState createState() => _OccurrenceDetailScreenState(
        occurrenceController: new OccurrenceController(),
      );
}

class _OccurrenceDetailScreenState extends State<OccurrenceDetailScreen> {
  final OccurrenceController occurrenceController;

  _OccurrenceDetailScreenState({this.occurrenceController});

  Occurrence _occurrence;
  bool showList = true;

  @override
  void initState() {
    this.load();
    super.initState();
  }

  Future<void> load() async {
    try {
      final occurrence = await this.occurrenceController.getOccurrence(
            uuid: widget.uuid,
          );

      setState(() {
        this._occurrence = occurrence;
      });
    } catch (e) {
      print('error');
      print(e.toString());
    }
  }

  bool showListController() {
    setState(() {
      this.showList = !this.showList;
    });

    return this.showList;

  }

  @override
  Widget build(BuildContext context) {
    if (this._occurrence == null) {
      return Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }
    return Scaffold(
      body: Stack(
        children: [
          MapOccurrenceDetailScreen(),
          ListOccurrenceDetailScreen(
            occurrence: this._occurrence,
            showList: this.showList,
          ),
          HeaderOccurrenceDetail(
            views: this._occurrence.visualizacoes,
            showListHandler: this.showListController,
          ),
        ],
      ),
    );
  }
}
