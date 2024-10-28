import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:diva_shopping_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:diva_shopping_app/features/cart/logic/cubit/cart_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';

class PaymentDetailsSection extends StatelessWidget {
  List<CartModel> cartModel;

  PaymentDetailsSection(this.cartModel);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartStates>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment',
              style: AppTextStyles.font16RobotoBlack,
            ),
            verticalSpace(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: AppTextStyles.font15DarkGreyMedium,
                ),
                Text(
                  '${BlocProvider.of<CartCubit>(context).calculateTotalPrice(cartModel)} L.E',
                  style: AppTextStyles.font15DarkGreyMedium,
                ),
              ],
            ),
            verticalSpace(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery fee',
                  style: AppTextStyles.font15DarkGreyMedium,
                ),
                Text(
                  '40 L.E',
                  style: AppTextStyles.font15DarkGreyMedium,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: const Divider(
                thickness: 1,
                color: AppColors.darkGrey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Payment',
                  style: AppTextStyles.font16RobotoBlack,
                ),
                Text(
                  '${(BlocProvider.of<CartCubit>(context).calculateTotalPrice(cartModel) + 40).toStringAsFixed(2)} L.E',
                  style: AppTextStyles.font16RobotoBlack,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
