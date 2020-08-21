import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';

class TopHeaderOpenOccurrenceScrren extends StatelessWidget {
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
          backgroundColor: Colors.grey[400],
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        Card(
          color: Colors.grey[400],
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
                'Tire fotos para a ocorrencia',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Card(
              color: Theme.of(context).accentColor,
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
        ),
      ],
    );
  }
}
