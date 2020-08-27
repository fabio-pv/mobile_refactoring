import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Widgets/TextFieldDefault/TextFieldDefault.dart';
import 'package:flutter/material.dart';

class ElementManualLocationOpenOccurrenceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(15.0),
      child: Card(
        elevation: 5,
        shape: GenericPattern.CARD_BORDER_RADIUS,
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'Bairro',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'Rua',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              Divider(),
              TextFieldDefault()
            ],
          ),
        ),
      ),
    );
  }
}
