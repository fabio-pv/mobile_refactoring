import 'package:badges/badges.dart';
import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/MapOccurrenceDetailScreen/DefaultMapOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';

class HeaderOccurrenceDetail extends StatefulWidget {
  final int views;
  final double latitude;
  final double longitude;
  final Function showListHandler;

  HeaderOccurrenceDetail({
    @required this.views,
    @required this.showListHandler,
    @required this.latitude,
    @required this.longitude,
  });

  @override
  _HeaderOccurrenceDetailState createState() => _HeaderOccurrenceDetailState();
}

class _HeaderOccurrenceDetailState extends State<HeaderOccurrenceDetail>
    with SingleTickerProviderStateMixin {
  final Tween<double> turnsTween = Tween<double>(begin: 1, end: 2);

  BuildContext _contextAux;
  AnimationController _controller;

  List<IconData> iconShowList = [
    Icons.map,
    Icons.layers,
    Icons.location_off,
  ];

  int iconShow = 0;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    super.initState();
  }

  void showListHandlerIntercept() {
    if (widget.latitude == null && widget.longitude == null) {
      this.doShowListAnimation(value: false);
      this.showMessage(
        message: DefaultMapOccurrenceDetailScreen.OCCURRENCE_WITHOUT_POSITION,
      );
      setState(() {
        this.iconShow = 2;
      });
      return;
    }

    final result = this.widget.showListHandler();

    this.doShowListAnimation(value: result);
    setState(() {
      this.iconShow = (result == true ? 0 : 1);
    });
  }

  void doShowListAnimation({bool value}) {
    if (value == true) {
      this._controller.forward();
      return;
    }
    this._controller.reverse();
  }

  void showMessage({@required String message}) {
    final snackbar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'Fechar',
        onPressed: () {},
      ),
    );

    Scaffold.of(this._contextAux).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    this._contextAux = context;
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
                  this.widget.views.toString() + ' Visualizações',
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
                heroTag: null,
                backgroundColor: Theme.of(context).primaryColor,
                child: RotationTransition(
                  turns: this.turnsTween.animate(this._controller),
                  child: Icon(
                    this.iconShowList[this.iconShow],
                  ),
                ),
                onPressed: this.showListHandlerIntercept,
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
