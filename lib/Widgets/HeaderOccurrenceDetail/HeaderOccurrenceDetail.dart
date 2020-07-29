import 'package:badges/badges.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';

class HeaderOccurrenceDetail extends StatelessWidget {
  final int views;

  HeaderOccurrenceDetail({@required this.views});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        top: 35,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FloatingActionButton(
            elevation: 4,
            onPressed: () {
              Navigator.pop(context);
            },
            heroTag: null,
            mini: true,
            backgroundColor: Colors.grey[400],
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
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
                child: Text(
                  this.views.toString() + ' Visualizações',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ),
          ),
          Expanded(flex: 1, child: Container()),
          Column(
            children: [
              FloatingActionButton(
                heroTag: null,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(Icons.map),
                onPressed: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Badge(
                badgeColor: Theme.of(context).primaryColor,
                shape: BadgeShape.square,
                borderRadius: 20,
                badgeContent: Text(
                  '666',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                child: FloatingActionButton(
                  elevation: 4,
                  heroTag: null,
                  mini: true,
                  backgroundColor: Theme.of(context).accentColor,
                  child: Icon(Icons.thumb_up),
                  onPressed: () {},
                ),
              ),
              FloatingActionButton(
                elevation: 4,
                heroTag: null,
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
