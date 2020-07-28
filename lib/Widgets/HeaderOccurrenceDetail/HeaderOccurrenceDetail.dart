import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';

class HeaderOccurrenceDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FloatingActionButton(
            onPressed: () {},
            heroTag: null,
            mini: true,
            backgroundColor: Colors.grey[400],
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
          ),
          Card(
            elevation: 4,
            shape: GenericPattern.CARD_BORDER_RADIUS,
            color: Colors.grey[400],
            child: Container(
              height: 40,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Center(
                child: Text('Visualizações'),
              ),
            ),
          ),
          Expanded(flex: 1, child: Container()),
          Column(
            children: [
              FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(Icons.map),
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                mini: true,
                backgroundColor: Theme.of(context).accentColor,
                child: Icon(Icons.thumb_up),
                onPressed: () {},
              ),

              FloatingActionButton(
                mini: true,
                backgroundColor: Theme.of(context).accentColor,
                child: Icon(Icons.favorite),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
