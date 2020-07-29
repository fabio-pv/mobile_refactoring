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

  @override
  void initState() {
    this.load();
    super.initState();
  }

  Future<void> load() async {
    try {
      this._occurrence = await this.occurrenceController.getOccurrence(
            uuid: widget.uuid,
          );
    } catch (e) {
      print('error');
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            MapOccurrenceDetailScreen(),
            ListOccurrenceDetailScreen(),
            HeaderOccurrenceDetail(),
          ],
        ),
      ),
    );
  }
}
