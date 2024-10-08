import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/category_response_model.dart';

class ItemOfProductList extends StatelessWidget {
  final CategoryResponseModel? product;
  const ItemOfProductList({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                height: 200.h,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25.r)),
                child: Image.network(
                  product?.image ?? '',
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: EdgeInsets.only(top: 5.h, left: 5.w),
                  child: CircleAvatar(
                    radius: 18.r,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.favorite_border,
                      size: 20.sp,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.h, right: 5.w),
                  child: CircleAvatar(
                    radius: 18.r,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.shopping_cart_rounded,
                      size: 20.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  product?.title ?? 'Title',
                  style: AppTextStyles.font14RobotoBlack,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Icon(
                Icons.star,
                color: AppColors.yellow,
                size: 16.0,
              ),
              horizontalSpace(4),
              Text(
                product?.rating.toString() ?? 'Rating',
                style: AppTextStyles.font12RobotoGrey,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Text(
            '${product?.price} L.E',
            style: AppTextStyles.font14RobotoBlack,
          ),
        ),
      ],
    );
  }
}
