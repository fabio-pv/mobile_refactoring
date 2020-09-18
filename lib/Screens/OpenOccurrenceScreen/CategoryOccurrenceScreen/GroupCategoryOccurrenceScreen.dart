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
      padding: EdgeInsets.only(bottom: 70,),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(2),
                child: ImageWidget(
                  url: this.group.imagem,
                  height: 140,
                  width: 140,
                  borderRadius: 100,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              this.group.nome,
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
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
          SizedBox(height: 30,),
          ListSubscretaryListCategoryOccurrenceScreen(
            subsecretaryList: this.group.subsecretaries,
          ),
        ],
      ),
    );
  }
}
