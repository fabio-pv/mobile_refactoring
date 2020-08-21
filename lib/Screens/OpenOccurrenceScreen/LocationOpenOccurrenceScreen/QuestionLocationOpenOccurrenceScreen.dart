import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/AutoManualLocationOpenoccurrenceScreen.dart';
import 'package:flutter/material.dart';

class QuestionLocationOpenOccurrenceScreen extends StatelessWidget {
  final Function({int choice}) doChoiceHandler;

  QuestionLocationOpenOccurrenceScreen({@required this.doChoiceHandler});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Card(
            elevation: 5,
            color: Colors.grey[400],
            shape: GenericPattern.CARD_BORDER_RADIUS,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Como gostaria de preencher o endereço ?',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 5,
            shape: GenericPattern.CARD_BORDER_RADIUS,
            color: Theme.of(context).accentColor,
            child: InkWell(
              onTap: () {
                this.doChoiceHandler(
                  choice: AutoManualLocationOpenoccurrenceScreen.AUTO_CHOICE,
                );
              },
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Automaticamente com a minha localização atual',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
            elevation: 5,
            color: Theme.of(context).accentColor,
            shape: GenericPattern.CARD_BORDER_RADIUS,
            child: InkWell(
              onTap: () {
                print('Manualmente');
              },
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Manualmente irei escrever o endreço',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
