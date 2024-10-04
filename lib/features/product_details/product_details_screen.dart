import 'package:diva_shopping_app/features/product_details/widgets/buttons_row.dart';
import 'package:diva_shopping_app/features/product_details/widgets/product_image_widget.dart';
import 'package:diva_shopping_app/features/product_details/widgets/product_name_and_rating_widget.dart';
import 'package:diva_shopping_app/features/product_details/widgets/product_price_and_description_widget.dart';
import 'package:diva_shopping_app/features/product_details/widgets/you_may_also_like_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const ProductImageWidget(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ProductNameAndRatingWidget(),
                          SizedBox(
                            height: 16.h,
                          ),
                          const ProductPriceAndDescriptionWidget(),
                          SizedBox(
                            height: 24.h,
                          ),
                          const YouMayAlsoLikeWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const ButtonsRow(),
          ],
        ),
      ),
    );
  }
}
