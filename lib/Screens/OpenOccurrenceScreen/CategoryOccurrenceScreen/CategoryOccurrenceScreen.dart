import 'package:fiscaliza_ja/Controllers/GroupController.dart';
import 'package:fiscaliza_ja/Models/Group.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/CategoryOccurrenceScreen/ListCategoryOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class CategoryOccurrenceScreen extends StatefulWidget {
  @override
  _CategoryOccurrenceScreenState createState() =>
      _CategoryOccurrenceScreenState(
        groupController: new GroupController(),
      );
}

class _CategoryOccurrenceScreenState extends State<CategoryOccurrenceScreen> {
  final GroupController groupController;

  _CategoryOccurrenceScreenState({@required this.groupController});

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
    return ListCategoryOccurrenceScreen(
      listGroup: this._listGroup,
    );
  }
}
