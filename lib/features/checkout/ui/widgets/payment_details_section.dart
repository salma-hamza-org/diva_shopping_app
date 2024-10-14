import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';

class PaymentDetailsSection extends StatelessWidget {
  const PaymentDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment',
          style: AppTextStyles.font16RobotoBlack,
        ),
        verticalSpace(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: AppTextStyles.font15DarkGreyMedium,
            ),
            Text(
              '1,250 L.E',
              style: AppTextStyles.font15DarkGreyMedium,
            ),
          ],
        ),
        verticalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery fee',
              style: AppTextStyles.font15DarkGreyMedium,
            ),
            Text(
              '1,250 L.E',
              style: AppTextStyles.font15DarkGreyMedium,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: Divider(
            thickness: 1,
            color: AppColors.darkGrey,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Payment',
              style: AppTextStyles.font16RobotoBlack,
            ),
            Text(
              '1,250 L.E',
              style: AppTextStyles.font16RobotoBlack,
            ),
          ],
        ),
      ],
    );
  }
}
