import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HeaderFileOpenOccurrenceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 30.0,
        left: 5.0,
        right: 5.0,
      ),
      child: Row(
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
            child: Container(),
          ),
          Column(
            children: [
              FloatingActionButton(
                onPressed: () {
                  print('foto');
                },
                elevation: 5,
                heroTag: null,
                mini: true,
                child: Icon(Icons.camera_alt),
              ),
              FloatingActionButton(
                onPressed: () {
                  print('galeria');
                },
                elevation: 5,
                heroTag: null,
                mini: true,
                child: Icon(Icons.collections),
              ),
              FloatingActionButton(
                onPressed: () {
                  print('Sem arquivo');
                },
                elevation: 5,
                heroTag: null,
                mini: true,
                child: Icon(Icons.navigate_next),
              ),
            ],
          )
        ],
      ),
    );
  }
}
