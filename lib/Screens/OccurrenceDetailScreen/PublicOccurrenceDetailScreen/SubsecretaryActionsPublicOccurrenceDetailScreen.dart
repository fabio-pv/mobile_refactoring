import 'package:fiscaliza_ja/Models/OccurrenceAction.dart';
import 'package:fiscaliza_ja/Models/Subsecretary.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/PublicOccurrenceDetailScreen/ListActionPublicOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/TextTwoStyles/TextTwoStylescWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SubsecretaryActionsPublicOccurrenceDetailScreen extends StatelessWidget {
  final Subsecretary subsecretary;
  final List<OccurrenceAction> occurrenceAction;

  SubsecretaryActionsPublicOccurrenceDetailScreen({
    @required this.subsecretary,
    @required this.occurrenceAction,
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
          ListActionPublicOccurrenceDetailScreen(
            occurrenceAction: this.occurrenceAction,
          ),
        ],
      ),
    );
  }
}
