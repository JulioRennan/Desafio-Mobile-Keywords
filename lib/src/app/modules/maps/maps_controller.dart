import 'dart:async';

import 'package:desafio_keyworks_mobile/src/app/modules/maps/components/custom_marker.dart';
import 'package:desafio_keyworks_mobile/src/utils/image_transformer.dart';
import 'package:desafio_keyworks_mobile/src/utils/manager_path.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mobx/mobx.dart';
import '../../../core/models/launchpad_entity.dart';
part 'maps_controller.g.dart';

class MapController = _MapControllerBase with _$MapController;

abstract class _MapControllerBase with Store {
  GoogleMapController? googleMapsController;

  @observable
  ObservableSet<Marker> markers = ObservableSet<Marker>();

  @observable
  LaunchpadEntity? selectedLaunchPad;

  @action
  setLaunchPad(LaunchpadEntity l) {
    selectedLaunchPad = l;
    reloadWithLaunchPadSelected();
  }

  @action
  reloadWithLaunchPadSelected() async {
    if (selectedLaunchPad == null) return;
    markers.clear();
    final customIcon = await ImageTransformer.getBytesFromAsset(
      ManagerPath.rocketImageRed,
      150,
    );
    markers.add(
      CustomMarker(
        launchpad: selectedLaunchPad!,
        customIcon: BitmapDescriptor.fromBytes(customIcon),
      ),
    );
  }

  updateCameraPosition() async {
    if (selectedLaunchPad==null) return;
    final launchPad = selectedLaunchPad!;
    final latLng = LatLng(launchPad.latitude, launchPad.longitude);
    Future.delayed(const Duration(seconds: 1)).then((_) async {
      googleMapsController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: latLng, zoom: 5),
        ),
      );
    });
  }
}
