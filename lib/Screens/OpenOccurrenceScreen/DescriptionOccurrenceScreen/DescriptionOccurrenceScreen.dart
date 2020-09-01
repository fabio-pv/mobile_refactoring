import 'package:fiscaliza_ja/Controllers/GroupController.dart';
import 'package:flutter/material.dart';

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

  @override
  void initState() {
    this.load();
    super.initState();
  }

  Future<void> load() async {
    try {
      final list = await this.groupController.getList();
      print(list);
    } catch (e) {
      print('Error');
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Center'),
      ),
    );
  }
}
