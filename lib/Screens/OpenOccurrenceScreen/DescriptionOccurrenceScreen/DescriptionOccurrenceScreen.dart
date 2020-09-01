import 'package:fiscaliza_ja/Controllers/GroupController.dart';
import 'package:fiscaliza_ja/Models/Group.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
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
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 250,
            color: Theme.of(context).primaryColor,
          ),
        ),
        ListView.separated(
          padding: EdgeInsets.only(
            top: 200,
          ),
          itemCount: this._listGroup.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    child: ListView(
                      padding: EdgeInsets.only(left: 60,),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.teal,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.cyan,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 50,
            );
          },
        ),
      ],
    );
  }
}
