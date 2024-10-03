import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../../core/theming/text_styles.dart';

class ProductPriceAndDescriptionWidget extends StatelessWidget {
  const ProductPriceAndDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '39.9 L.E',
          style: AppTextStyles.font22RobotoBlack,
        ),
        SizedBox(
          height: 16.h,
        ),
        ReadMoreText(
          'Lightweight perfect for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, it covers the hips, and the hood is generous but does not overdo it.Attached Cotton Lined Hood with Adjustable Drawstrings give it a real styled look. ',
          style: AppTextStyles.font14RobotoBlack,
          trimMode: TrimMode.Line,
          trimLines: 2,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Show less',
          moreStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent),
          lessStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent),
        ),
      ],
    );
  }
}
