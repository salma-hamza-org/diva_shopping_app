import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ItemOfShimmerProductList extends StatelessWidget {
  const ItemOfShimmerProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.lighterGray,
                borderRadius: BorderRadius.circular(25.r),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            width: 100.w,
            height: 16.h,
            color: AppColors.lighterGray,
          ),
          SizedBox(height: 4.h),
          Container(
            width: 50.w,
            height: 16.h,
            color: AppColors.lighterGray,
          ),
        ],
      ),
    );
  }
}
