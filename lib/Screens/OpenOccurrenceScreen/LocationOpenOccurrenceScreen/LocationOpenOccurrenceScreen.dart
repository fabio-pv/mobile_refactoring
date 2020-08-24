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
      -22.506371,
      -44.093599,
    ),
    zoom: 12,
  );

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
        zoom: 17,
      );

      final GoogleMapController controller = await this._controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(newPosition));
    } catch (e) {
      print('Error');
      rethrow;
    }
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
            myLocationEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              this._controller.complete(controller);
            },
          ),
          AutoManualLocationOpenoccurrenceScreen(),
        ],
      ),
    );
  }
}
