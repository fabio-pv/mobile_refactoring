import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Providers/OpenOccurrenceScreenProvider.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/StepsWidgetOpenOccurrenceScreen.dart';
import 'package:flutter/material.dart';

class TopHeaderOpenOccurrenceScrren extends StatelessWidget {
  final int step;

  TopHeaderOpenOccurrenceScrren({@required this.step});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          elevation: 5,
          heroTag: null,
          mini: true,
          backgroundColor: Colors.grey[100],
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        Expanded(
          flex: 1,
          child: Card(
            color: Colors.grey[100],
            elevation: 5,
            shape: GenericPattern.CARD_BORDER_RADIUS,
            child: Container(
              padding: EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              height: 35,
              child: Center(
                child: Text(
                  StepsWidgetOpenOccurrenceScreen.textHeaderStep(
                    step: this.step,
                  ),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ),
          ),
        ),
        Card(
          color: Theme.of(context).accentColor,
          elevation: 5,
          shape: GenericPattern.CARD_BORDER_RADIUS,
          child: InkWell(
            onTap: () {
              OpenOccurrenceScreenProvider.of(context).doNextStep();
            },
            child: Container(
              padding: EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              height: 35,
              child: Center(
                child: Text(
                  'Próximo',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
