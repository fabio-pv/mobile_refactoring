import 'package:fiscaliza_ja/Patterns/GenericPattern.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class AutoLocationOpenOccurrenceScreen extends StatelessWidget {
  final Placemark placemark;

  AutoLocationOpenOccurrenceScreen({@required this.placemark});

  @override
  Widget build(BuildContext context) {

    if(this.placemark == null){
      return Container();
    }

    return Stack(
      children: [
        Center(
          child: Icon(
            Icons.location_on,
            size: 40,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(15.0),
            child: Card(
              elevation: 5,
              shape: GenericPattern.CARD_BORDER_RADIUS,
              child: Container(
                padding: EdgeInsets.all(15.0),
                height: 120,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mova o mapa para ajustar a localização',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Divider(),
                    Text(
                      this.placemark.subLocality,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          this.placemark.thoroughfare,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(' • '),
                        Text(
                          this.placemark.subThoroughfare,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
