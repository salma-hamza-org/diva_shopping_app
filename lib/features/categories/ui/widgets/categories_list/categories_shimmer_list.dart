import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/helpers/spacing.dart';

class CategoriesShimmerList extends StatelessWidget {
  const CategoriesShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          children: [
            CircleAvatar(
              radius: 30.0.r,
              backgroundColor: AppColors.lighterGray,
            ),
            verticalSpace(5.h),
            Container(
              width: 50.w,
              height: 16.h,
              color: AppColors.lighterGray,
            )
          ],
        ),
      ),
    );
  }
}
