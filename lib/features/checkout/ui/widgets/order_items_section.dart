import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:diva_shopping_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:diva_shopping_app/features/cart/logic/cubit/cart_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';

class OrderItemsSection extends StatelessWidget {
  List<CartModel> cartModel;

  OrderItemsSection(this.cartModel);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartStates>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Items :',
              style: AppTextStyles.font16RobotoBlack,
            ),
            SizedBox(
              height: 160.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      height: 110.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: AppColors.darkGrey, width: 1.5),
                          image: DecorationImage(
                              image: NetworkImage(cartModel[index].imagePath),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(12.r)),
                    ),
                    SizedBox(
                        width: 100.w,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 100.w,
                              child: Text(
                                cartModel[index].name,
                                style: AppTextStyles.font14RobotoBlack,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '${cartModel[index].price} L.E',
                                    style: AppTextStyles.font12RobotoBlack.copyWith(
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow
                                            .ellipsis), // Keep the item count regular
                                  ),
                                ),
                                Text(
                                  '${cartModel[index].quantity}item',
                                  style: AppTextStyles
                                      .font14RobotoBlack, // Keep the item count regular
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
                separatorBuilder: (context, index) => horizontalSpace(10.w),
                itemCount: cartModel.length,
              ),
            ),
          ],
        );
      },
    );
  }
}
