import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class CustomTextFormField extends StatelessWidget {
  String hintText;
  TextStyle textStyle;
  //String Function(String?) validator;
  Icon? suffixIcon;
  Icon? prefixIcon;
  //TextEditingController controller;
  bool isObscure;

  CustomTextFormField(
      {super.key, 
        required this.hintText,
      required this.textStyle,
      //required this.validator,
      this.suffixIcon,
        this.prefixIcon,
      //required this.controller,
      this.isObscure=false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //controller: controller,
      //validator: validator,
      obscureText: isObscure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 18.w),
          isDense: true,
          enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey,width: 1.5),
          borderRadius: BorderRadius.circular(25.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.pink,width: 2),
          borderRadius: BorderRadius.circular(25.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.red,width: 2),
          borderRadius: BorderRadius.circular(25.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.red,width: 2),
          borderRadius: BorderRadius.circular(25.r),
        ),
        suffix: suffixIcon,
        prefixIcon:prefixIcon ,
        hintText: hintText,
        hintStyle: textStyle,
      ),
    );
  }
}
