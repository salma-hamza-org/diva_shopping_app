import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/spacing.dart';
import '../theming/colors.dart';

class ActiveIconContainerTab extends StatelessWidget{

  IconData icon;
  String labelText;
  ActiveIconContainerTab({super.key,
    required this.icon,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 120.w,
      decoration: BoxDecoration(
        color: AppColors.lightPink,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
              icon,
              color: AppColors.pink,
              size: 26.sp
          ),
          horizontalSpace(3),
          Flexible(
            child: Text(
              labelText,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.font14RobotoPink,),
          ),
        ],
      ),
    );
  }
}
