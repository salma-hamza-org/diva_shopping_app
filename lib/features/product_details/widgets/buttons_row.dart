import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/shared_widgets/custom_button.dart';
import '../../../core/theming/text_styles.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 375.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.r),
            topRight: Radius.circular(12.r)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50.h,
              width: 50.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Icon(Icons.favorite_border_outlined,color: Colors.black,size: 30.r,),
            ),
            const Spacer(),
            CustomButton(
                text: 'Buy now',
                textStyle: AppTextStyles.font18RobotoWhite,
                width: 160.w,
                onTap: (){}),
            const Spacer(),
            Container(
              height: 50.h,
              width: 50.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Icon(Icons.add_shopping_cart_rounded,color: Colors.black,size: 30.r,),
            ),
          ],
        ),
      ),
    );
  }
}
