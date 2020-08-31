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
  String _addressInital = 'Volta Redonda RJ Brasil';
  String _neighborhood = '';
  String _street = '';
  String _number = '';

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
        tilt: 40,
      );

      final GoogleMapController controller = await this._controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(newPosition));
    } catch (e) {
      print('Error');
      rethrow;
    }
  }

  Future<void> _setPositionByString({
    String neighborhood = '',
    String street = '',
    String number = '',
  }) async {
    try {
      this._neighborhood =
          (neighborhood.isEmpty ? this._neighborhood : neighborhood);
      this._street = (street.isEmpty ? this._street : street);
      this._number = (number.isEmpty ? this._number : number);

      final address = this._street +
          ',' +
          this._number +
          ' - ' +
          this._neighborhood +
          ' ' +
          this._addressInital;
      print(address);
      List<Placemark> placemark =
          await Geolocator().placemarkFromAddress(address);

      final zoom = this.getZoomToSearch(
        neighborhood: neighborhood,
        street: street,
        number: number,
      );

      final newPosition = CameraPosition(
        target: LatLng(
          placemark.first.position.latitude,
          placemark.first.position.longitude,
        ),
        zoom: zoom,
        tilt: 0,
      );

      final GoogleMapController controller = await this._controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(newPosition));
    } catch (e) {
      print('error');
    }
  }

  double getZoomToSearch({
    String neighborhood,
    String street,
    String number,
  }) {
    if (number.isNotEmpty) {
      return 19.0;
    }
    if (street.isNotEmpty) {
      return 17.0;
    }

    return 15.5;
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
      doSetPositionByString: this._setPositionByString,
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
