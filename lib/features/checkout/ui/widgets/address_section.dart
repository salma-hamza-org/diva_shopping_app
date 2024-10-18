import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as loc;
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';
import '../location_manager/address_display.dart';
import '../location_manager/address_map.dart';
import '../location_manager/location_helper.dart';

class AddressSection extends StatefulWidget {
  @override
  State<AddressSection> createState() => _AddressSectionState();
}

class _AddressSectionState extends State<AddressSection> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  loc.LocationData? _currentLocation;
  loc.Location location = loc.Location();
  String? _currentAddress;
  Marker? _userMarker;

  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Address', style: AppTextStyles.font16RobotoBlack),
        verticalSpace(10.h),
        Container(
          height: 200.h,
          width: 330.w,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.pink, width: 2),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: _currentLocation == null
              ? const Center(
                  child: CircularProgressIndicator(color: AppColors.pink))
              : Column(
                  children: [
                    AddressMap(
                      controller: _controller,
                      currentLocation: _currentLocation != null
                          ? LatLng(_currentLocation!.latitude!,
                              _currentLocation!.longitude!)
                          : null,
                      userMarker: _userMarker,
                    ),
                    AddressDisplay(currentAddress: _currentAddress),
                  ],
                ),
        )
      ],
    );
  }

  Future<void> getUserLocation() async {
    final locationHelper = LocationHelper(
      location: location,
      controller: _controller,
      context: context,
      onLocationSet: (locationData, marker) {
        setState(() {
          _currentLocation = locationData;
          _userMarker = marker;
        });
      },
      onAddressSet: (address) {
        setState(() {
          _currentAddress = address;
        });
      },
    );
    await locationHelper.getUserLocation();
  }
}
