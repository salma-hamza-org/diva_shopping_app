import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/text_styles.dart';

class ProductNameAndRatingWidget extends StatelessWidget {
  const ProductNameAndRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 200.w,
          child: Text(
            'Rain Jacket Women Windbreaker Striped Climbing Raincoats',
            style: AppTextStyles.font16RobotoBlack
                .copyWith(color: Colors.grey.shade700),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.star,
          color: AppColors.yellow,
        ),
        Text(
          '3.8 (679)',
          style: AppTextStyles.font12RobotoGrey,
        ),
      ],
    );
  }
}
