import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:diva_shopping_app/features/wish_list/logic/cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/wish_list/logic/cubit/favorite_state.dart';

class ItemOfProductList extends StatelessWidget {
  final ProductModel? productModel;
  final GestureTapCallback? onTap;

  const ItemOfProductList({super.key, required this.productModel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        final isFavorite = state.maybeWhen(
          success: (favorites) => favorites.contains(productModel),
          failure: (message) {
            return false;
          },
          orElse: () => false,
        );

        return GestureDetector(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: 220.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Image.network(
                        productModel?.image ?? 'assets/images/testImage.png',
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
                          child: IconButton(
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: isFavorite ? Colors.red : Colors.grey,
                            ),
                            onPressed: () {
                              if (isFavorite) {
                                context
                                    .read<FavoriteCubit>()
                                    .removeFromFavorites(productModel!);
                              } else {
                                context
                                    .read<FavoriteCubit>()
                                    .addToFavorites(productModel!);
                              }
                            },
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
                        productModel?.title ?? 'Name',
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
                      productModel?.rating?.rate.toString() ?? '4.9',
                      style: AppTextStyles.font12RobotoGrey,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.h),
                child: Text(
                  '${productModel?.price} L.E',
                  style: AppTextStyles.font14RobotoBlack,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
