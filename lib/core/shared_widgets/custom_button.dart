import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class CustomButton extends StatelessWidget {
  String text;
  TextStyle textStyle;
  Color color;
  double width;
  void Function() onTap;

  CustomButton(
      {super.key, required this.text,
      required this.textStyle,
      this.color = AppColors.pink,
      required this.width,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        width: width,
        height: 50.h,
        decoration: BoxDecoration(
            color: AppColors.pink, borderRadius: BorderRadius.circular(20.r)),
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
