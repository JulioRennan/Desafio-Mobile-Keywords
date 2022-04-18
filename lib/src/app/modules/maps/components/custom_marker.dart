import 'package:desafio_keyworks_mobile/src/core/models/launchpad_entity.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMarker extends Marker {
  final LaunchpadEntity launchpad;
  final BitmapDescriptor customIcon;

  CustomMarker({required this.launchpad, required this.customIcon})
      : 
        super(
          markerId: MarkerId(launchpad.id),
          position: LatLng(
            launchpad.latitude,
            launchpad.longitude,
          ),
          icon: customIcon,
          infoWindow: InfoWindow(
            title: launchpad.name,
            snippet: '${launchpad.locality},\n${launchpad.region}',
          ),
        );
}
