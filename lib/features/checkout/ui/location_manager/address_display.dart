import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/text_styles.dart';

class AddressDisplay extends StatelessWidget {
  final String? currentAddress;

  AddressDisplay({required this.currentAddress});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          Icon(Icons.location_on_outlined, color: Colors.black, size: 30.r),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Home', style: AppTextStyles.font15DarkGreyMedium),
                Text(
                  currentAddress ?? 'Loading address...',
                  style: AppTextStyles.font14RobotoBlack,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
