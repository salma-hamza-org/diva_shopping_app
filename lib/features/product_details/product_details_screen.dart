import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:diva_shopping_app/features/product_details/widgets/buttons_row.dart';
import 'package:diva_shopping_app/features/product_details/widgets/product_image_widget.dart';
import 'package:diva_shopping_app/features/product_details/widgets/product_name_and_rating_widget.dart';
import 'package:diva_shopping_app/features/product_details/widgets/product_price_and_description_widget.dart';
import 'package:diva_shopping_app/features/product_details/widgets/you_may_also_like_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel? productModel;
  final List<ProductModel?>? productList;

  const ProductDetailsScreen({super.key, this.productModel, this.productList});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductImageWidget(productModel: productModel),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.w, vertical: 16.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ProductNameAndRatingWidget(
                                  productModel: productModel),
                              verticalSpace(16),
                              ProductPriceAndDescriptionWidget(
                                  productModel: productModel),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverFillRemaining(
                    child: YouMayAlsoLikeWidget(productList: productList),
                  ),
                ],
              ),
            ),
            ButtonsRow(productModel: productModel),
          ],
        ),
      ),
    );
  }
}
