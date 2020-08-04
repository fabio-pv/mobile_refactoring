import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerMapOccurrenceDetailScreen {
  static Map<MarkerId, Marker> createMarkers({
    String id,
    LatLng latLng,
    BitmapDescriptor icon,
    Map<MarkerId, Marker> markers,
  }) {
    final MarkerId markerId = MarkerId(id);

    Marker marker = Marker(
      markerId: markerId,
      position: latLng,
      draggable: true,
      icon: icon,
    );

    markers[markerId] = marker;

    return markers;
  }
}
