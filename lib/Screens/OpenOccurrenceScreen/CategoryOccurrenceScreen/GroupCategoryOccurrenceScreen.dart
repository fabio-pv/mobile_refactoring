import 'package:fiscaliza_ja/Models/Group.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/CategoryOccurrenceScreen/ListSubscretaryListCategoryOccurrenceScreen.dart';
import 'package:fiscaliza_ja/Widgets/Image/ImageWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class GroupCategoryOccurrenceScreen extends StatelessWidget {
  final Group group;

  GroupCategoryOccurrenceScreen({@required this.group});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(
        top: 140,
        bottom: 50,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 60,
              right: 60,
            ),
            child: Center(
              child: Text(
                this.group.nome,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Container(
            padding: EdgeInsets.only(
              left: 60,
              right: 60,
            ),
            child: Center(
              child: Text(
                this.group.descricao,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          ListSubscretaryListCategoryOccurrenceScreen(
            subsecretaryList: this.group.subsecretaries,
          ),
        ],
      ),
    );
  }
}
