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
              text: this.occurrence.district?.nome ?? 'Não informado',
            ),
            TextTwoStylesWidget(
              textHighlighted: 'Rua: ',
              text: this.occurrence.street?.nome ??
                  this.occurrence.ruaTemporaria ??
                  'Não Informado',
            ),
            TextTwoStylesWidget(
              textHighlighted: 'Número: ',
              text: this.occurrence.numero ?? 'Não informado',
            ),
            TextTwoStylesWidget(
              textHighlighted: 'Complemento: ',
              text: this.occurrence.complemento ?? 'Não informado',
            ),
            TextTwoStylesWidget(
              textHighlighted: 'Ponto de Refẽrencia: ',
              text: this.occurrence.pontoReferencia ?? 'Não informado',
            ),
          ],
        ),
      ),
    );
  }
}
