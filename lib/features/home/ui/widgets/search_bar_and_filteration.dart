import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/shared_widgets/custom_text_form_field.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarAndFilteration extends StatelessWidget{
  const SearchBarAndFilteration({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomTextFormField(
              hintText: 'Search here',
              textStyle: AppTextStyles.font14RobotoBlack.copyWith(color: Colors.grey.shade600),
              prefixIcon:Icon(
                Icons.search,
                color: AppColors.pink,
                size: 26.sp,
              ),
            ),
          ),
          horizontalSpace(16),
          CircleAvatar(
            backgroundColor: AppColors.lightPink,
            child: Image.asset('assets/images/filteration_icon.png'),
          )
        ],
      ),
    );
  }
}
