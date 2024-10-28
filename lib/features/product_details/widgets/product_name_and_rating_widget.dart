import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/text_styles.dart';

class ProductNameAndRatingWidget extends StatelessWidget {
  final ProductModel? productModel;

  const ProductNameAndRatingWidget({super.key, this.productModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 200.w,
          child: Text(
            productModel?.title ??'Name of item',
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
          '${productModel?.rating?.rate.toString()} (${productModel?.rating?.count})',
          style: AppTextStyles.font12RobotoGrey,
        ),
      ],
    );
  }
}
