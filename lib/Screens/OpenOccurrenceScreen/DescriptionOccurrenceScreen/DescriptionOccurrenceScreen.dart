import 'package:fiscaliza_ja/Controllers/GroupController.dart';
import 'package:fiscaliza_ja/Models/Group.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/DescriptionOccurrenceScreen/ListDescriptionOccurrenceScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DescriptionOccurrenceScreen extends StatefulWidget {
  @override
  _DescriptionOccurrenceScreenState createState() =>
      _DescriptionOccurrenceScreenState(
        groupController: new GroupController(),
      );
}

class _DescriptionOccurrenceScreenState
    extends State<DescriptionOccurrenceScreen> {
  final GroupController groupController;

  _DescriptionOccurrenceScreenState({@required this.groupController});

  List<Group> _listGroup = [];

  @override
  void initState() {
    this.load();
    super.initState();
  }

  Future<void> load() async {
    try {
      final list = await this.groupController.getList();

      setState(() {
        this._listGroup = list;
      });
    } catch (e) {
      print('Error');
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return  ListDescriptionOccurrenceScreen(
      listGroup: this._listGroup,
    );
  }
}
