import 'dart:async';

import 'package:fiscaliza_ja/Providers/LocationOpenOccurrenceScreenProvider.dart';
import 'package:fiscaliza_ja/Screens/OpenOccurrenceScreen/LocationOpenOccurrenceScreen/AutoManualLocationOpenoccurrenceScreen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationOpenOccurrenceScreen extends StatefulWidget {
  @override
  _LocationOpenOccurrenceScreenState createState() =>
      _LocationOpenOccurrenceScreenState();
}

class _LocationOpenOccurrenceScreenState
    extends State<LocationOpenOccurrenceScreen> {
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition position = CameraPosition(
    target: LatLng(
      -22.517073623625734,
      -44.10279639065266,
    ),
    zoom: 12,
  );
  Placemark _placemark;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _setCurrentPosition() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

      final newPosition = CameraPosition(
        target: LatLng(
          position.latitude,
          position.longitude,
        ),
        zoom: 19,
        tilt: 40
      );

      final GoogleMapController controller = await this._controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(newPosition));
    } catch (e) {
      print('Error');
      rethrow;
    }
  }

  Future<void> _getScreenCordinate() async {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    screenWidth *= MediaQuery.of(context).devicePixelRatio;
    screenHeight *= MediaQuery.of(context).devicePixelRatio;

    double middleX = screenWidth / 2;
    double middleY = screenHeight / 2;

    ScreenCoordinate screenCoordinate = ScreenCoordinate(
      x: middleX.round(),
      y: middleY.round(),
    );

    final GoogleMapController controller = await this._controller.future;
    LatLng middlePoint = await controller.getLatLng(screenCoordinate);

    List<Placemark> placemark = await Geolocator().placemarkFromCoordinates(
      middlePoint.latitude,
      middlePoint.longitude,
    );

    setState(() {
      this._placemark = placemark.first;
    });

  }

  @override
  Widget build(BuildContext context) {
    return LocationOpenOccurrenceScreenProvider(
      doSetCurrentPosition: this._setCurrentPosition,
      child: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: this.position,
            zoomControlsEnabled: false,
            myLocationButtonEnabled: false,
            onMapCreated: (GoogleMapController controller) {
              this._controller.complete(controller);
            },
            onCameraIdle: this._getScreenCordinate,
          ),
          AutoManualLocationOpenoccurrenceScreen(
            placemark: this._placemark,
          ),
        ],
      ),
    );
  }
}
