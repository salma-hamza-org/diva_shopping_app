import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';

class ItemOfListOfCategories extends StatelessWidget{
  int index;
  ItemOfListOfCategories({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    List<String> categoryNames = [
      "All",
      "Electronics",
      "Jewelery",
      "Men's clothing",
      "Women's clothing"
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 16.h),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightPink,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child:Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w), // Add horizontal margin to text
            child: Text(categoryNames[index],
              style: AppTextStyles.font14RobotoPink,
            ),
          ),
        ),
      ),
    );
  }
}
