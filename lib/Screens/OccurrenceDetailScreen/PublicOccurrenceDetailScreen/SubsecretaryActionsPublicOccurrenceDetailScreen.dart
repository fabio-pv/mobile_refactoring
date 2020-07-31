import 'package:fiscaliza_ja/Models/Subsecretary.dart';
import 'package:fiscaliza_ja/Widgets/TextTwoStyles/TextTwoStylescWidget.dart';
import 'package:flutter/material.dart';

class SubsecretaryActionsPublicOccurrenceDetailScreen extends StatelessWidget {
  final Subsecretary subsecretary;

  SubsecretaryActionsPublicOccurrenceDetailScreen({
    @required this.subsecretary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Center(
            child: TextTwoStylesWidget(
              textHighlighted: 'Serviço: ',
              text: this.subsecretary.nome,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Ações a serem tomadas:'),
          ),
        ],
      ),
    );
  }
}
