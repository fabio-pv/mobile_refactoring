import 'dart:async';

import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/MapOccurrenceDetailScreen/DefaultMapOccurrenceDetailScreen.dart';
import 'package:fiscaliza_ja/Screens/OccurrenceDetailScreen/MapOccurrenceDetailScreen/MarkerMapOccurrenceDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapOccurrenceDetailScreen extends StatefulWidget {
  final bool showList;
  final double latitude;
  final double longitude;

  MapOccurrenceDetailScreen({
    this.showList,
    this.latitude,
    this.longitude,
  });

  @override
  _MapOccurrenceDetailScreenState createState() =>
      _MapOccurrenceDetailScreenState();
}

class _MapOccurrenceDetailScreenState extends State<MapOccurrenceDetailScreen> {
  Completer<GoogleMapController> _controller = Completer();
  Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};

  Future<void> _goToOccurrencePosition() async {
    final GoogleMapController controller = await this._controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          zoom: 18,
          target: LatLng(
            widget.latitude,
            widget.longitude,
          ),
        ),
      ),
    );
  }

  Future<void> _goToDefaultPosition() async {
    final GoogleMapController controller = await this._controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
          DefaultMapOccurrenceDetailScreen.cameraDefault),
    );
  }

  void _createMarker() {
    setState(() {
      this._markers = MarkerMapOccurrenceDetailScreen.createMarkers(
        icon: BitmapDescriptor.defaultMarker,
        id: 'position',
        markers: this._markers,
        latLng: LatLng(
          widget.latitude,
          widget.longitude,
        ),
      );
    });
  }

  @override
  void didUpdateWidget(MapOccurrenceDetailScreen oldWidget) {
    this.animationMap();
    super.didUpdateWidget(oldWidget);
  }

  void animationMap() {
    if (widget.showList == false) {
      this._goToOccurrencePosition();
      this._createMarker();
      return;
    }

    this._goToDefaultPosition();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: DefaultMapOccurrenceDetailScreen.cameraDefault,
      zoomControlsEnabled: false,
      markers: Set<Marker>.of(this._markers.values),
      onMapCreated: (GoogleMapController controller) {
        this._controller.complete(controller);
      },
    );
  }
}
