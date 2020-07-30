import 'package:fiscaliza_ja/Models/Occurrence.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/TitleCarDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Widgets/TextTwoStyles/TextTwoStylescWidget.dart';
import 'package:flutter/material.dart';

class AddressOccurrenceDetailScreen extends StatelessWidget {
  final Occurrence occurrence;

  AddressOccurrenceDetailScreen({@required this.occurrence});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ListOccurrenceDetailScreen.PADDING_DEFAULT,
        right: ListOccurrenceDetailScreen.PADDING_DEFAULT,
      ),
      child: CardDefaultOccurrenceDetailScreen(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleCarDefaultOccurrenceDetailScreen(
              title: 'Local',
            ),
            SizedBox(
              height: 10,
            ),
            TextTwoStylesWidget(
              textHighlighted: 'Bairro: ',
              text: 'Santo Agostinho',
            ),
            TextTwoStylesWidget(
              textHighlighted: 'Rua: ',
              text: '1032',
            ),
            TextTwoStylesWidget(
              textHighlighted: 'Número: ',
              text: '22',
            ),
            TextTwoStylesWidget(
              textHighlighted: 'Complemento: ',
              text: 'Acho que isso é uma complemento',
            ),
            TextTwoStylesWidget(
              textHighlighted: 'Ponto de Refẽrencia: ',
              text: 'Proximo do completo que fica perto do final',
            ),
          ],
        ),
      ),
    );
  }
}
