import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

import '../../../core/theming/text_styles.dart';

class ProductPriceAndDescriptionWidget extends StatelessWidget {
  final ProductModel? productModel;

  const ProductPriceAndDescriptionWidget({super.key, this.productModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${productModel?.price?.toDouble()} L.E',
          style: AppTextStyles.font22RobotoBlack,
        ),
        SizedBox(
          height: 16.h,
        ),
        ReadMoreText(
          productModel?.description ?? 'description of item',
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
