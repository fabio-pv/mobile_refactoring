import 'package:google_maps_flutter/google_maps_flutter.dart';

class DefaultMapOccurrenceDetailScreen {
  static const CameraPosition CAMERA_DEFAULT = CameraPosition(
    zoom: 12,
    target: LatLng(
      -22.509253,
      -44.089534,
    ),
  );

  static const String OCCURRENCE_WITHOUT_POSITION =
      'Essa ocorrencia não possui localização GPS';
}
