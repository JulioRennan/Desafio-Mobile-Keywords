import 'package:desafio_keyworks_mobile/src/app/modules/maps/maps_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';

class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);
  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  final mapController = Modular.get<MapController>();
  Set<Marker> markers = <Marker>{};
  late final GoogleMapController controller;
  @override
  void initState() {
    super.initState();
    autorun(
      (_) {
        setState(() => markers = Set.from(mapController.markers));
        mapController.updateCameraPosition();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: const CameraPosition(target: LatLng(37, -122)),
      myLocationButtonEnabled: false,
      markers: markers,
      onMapCreated: (controller) =>
          mapController.googleMapsController = controller,
    );
  }
}
