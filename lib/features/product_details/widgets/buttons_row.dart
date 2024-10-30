import 'package:diva_shopping_app/core/helpers/extentions.dart';
import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:diva_shopping_app/features/wish_list/logic/cubit/favorite_cubit.dart';
import 'package:diva_shopping_app/features/wish_list/logic/cubit/favorite_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routes_names.dart';
import '../../../core/shared_widgets/custom_button.dart';
import '../../../core/theming/text_styles.dart';
import '../../home/data/models/product_model.dart';

class ButtonsRow extends StatelessWidget {
  final ProductModel? productModel;

  const ButtonsRow({super.key, required this.productModel});

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
                  child: IconButton(
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.black,
                      size: 30.r,
                    ),
                    onPressed: () {},
                  ),
                ),
                const Spacer(),
                CustomButton(
                  text: 'Buy now',
                  textStyle: AppTextStyles.font18RobotoWhite,
                  width: 160.w,
                  onTap: () {
                    context.pushNamed(Routes.checkoutScreen, arguments: {
                      'cartModel': [
                        CartModel(
                            id: productModel?.id.toString() ?? '',
                            name: productModel?.title ?? '',
                            price: productModel?.price ?? 0,
                            quantity: 1,
                            imagePath: productModel?.image ?? '')
                      ],
                      'isFromCart': false
                    });
                  },
                ),
                const Spacer(),
                Container(
                  height: 50.h,
                  width: 50.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Icon(
                    Icons.add_shopping_cart_rounded,
                    color: Colors.black,
                    size: 30.r,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
