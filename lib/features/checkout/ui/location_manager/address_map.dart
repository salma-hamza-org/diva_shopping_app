import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressMap extends StatelessWidget {
  final Completer<GoogleMapController> controller;
  final LatLng? currentLocation;
  final Marker? userMarker;

  AddressMap({
    required this.controller,
    required this.currentLocation,
    required this.userMarker,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _getInitialCameraPosition(),
          markers: userMarker != null ? {userMarker!} : {},
          onMapCreated: (GoogleMapController mapController) {
            if (!controller.isCompleted) {
              controller.complete(mapController);
            }
          },
        ),
      ),
    );
  }

  CameraPosition _getInitialCameraPosition() {
    return CameraPosition(
      target: currentLocation ?? const LatLng(0, 0), // Default location if null
      zoom: 14,
    );
  }
}
