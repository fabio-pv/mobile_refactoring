import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapOccurrenceDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        zoom: 12,
        target: LatLng(-22.509253, -44.089534),
      ),
      zoomControlsEnabled: false,
      onMapCreated: (GoogleMapController controller) {},
    );
  }
}
