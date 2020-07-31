import 'package:fiscaliza_ja/Models/Secretary.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/CardDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/Defaults/TitleCarDefaultOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/ListOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class SecretaryPublicOccurrenceDetailScreen extends StatelessWidget {
  final Secretary secretary;

  SecretaryPublicOccurrenceDetailScreen({@required this.secretary});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(GenericPattern.BORDER_RADIUS),
          topRight: Radius.circular(GenericPattern.BORDER_RADIUS),
        ),
      ),
      child: Center(
        child: Column(
          children: [
            TitleCarDefaultOccurrenceDetailScreen(
              title: 'Orgão Publico',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              this.secretary.nome,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              this.secretary.descricao,
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
