import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as loc;
import 'package:geocoding/geocoding.dart' as geo;
import 'error_dialogs.dart';

class LocationHelper {
  final loc.Location location;
  final Completer<GoogleMapController> controller;
  final BuildContext context;
  final Function(loc.LocationData, Marker) onLocationSet;
  final Function(String) onAddressSet;

  LocationHelper({
    required this.location,
    required this.controller,
    required this.context,
    required this.onLocationSet,
    required this.onAddressSet,
  });

  Future<void> getUserLocation() async {
    if (!await _checkLocationServiceEnabled()) return;
    if (!await _checkLocationPermissionGranted()) return;

    loc.LocationData locationData = await location.getLocation();
    _setUserLocation(locationData);

    await _getAddressFromLatLng(locationData.latitude!, locationData.longitude!);

    final GoogleMapController mapController = await controller.future;
    mapController.animateCamera(CameraUpdate.newLatLng(
      LatLng(locationData.latitude!, locationData.longitude!),
    ));
  }

  Future<bool> _checkLocationServiceEnabled() async {
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        showServiceErrorDialog(context, getUserLocation);
        return false;
      }
    }
    return true;
  }

  Future<bool> _checkLocationPermissionGranted() async {
    loc.PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == loc.PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != loc.PermissionStatus.granted) {
        showPermissionErrorDialog(context);
        return false;
      }
    }
    return true;
  }

  void _setUserLocation(loc.LocationData locationData) {
    Marker userMarker = Marker(
      markerId: const MarkerId('user_location'),
      position: LatLng(locationData.latitude!, locationData.longitude!),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: const InfoWindow(title: "You are here"),
    );

    onLocationSet(locationData, userMarker);
  }

  Future<void> _getAddressFromLatLng(double latitude, double longitude) async {
    try {
      List<geo.Placemark> placeMarks = await geo.placemarkFromCoordinates(latitude, longitude);
      geo.Placemark place = placeMarks[1];
      String address = "${place.street}, ${place.locality}, ${place.administrativeArea}, ${place.country}";
      onAddressSet(address);
    } catch (e) {
      print(e.toString());
    }
  }
}
