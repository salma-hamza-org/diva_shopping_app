import 'package:diva_shopping_app/core/helpers/extentions.dart';
import 'package:diva_shopping_app/core/routing/routes_names.dart';
import 'package:diva_shopping_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared_widgets/custom_button.dart';
import '../../../../core/theming/text_styles.dart';

class PriceAndCheckoutButtonRow extends StatelessWidget {
  String totalPrice;

  PriceAndCheckoutButtonRow(this.totalPrice);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.h,
        width: 375.w,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade400),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.r), topRight: Radius.circular(25.r)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Total price',
                    style: AppTextStyles.font16RobotoBlack,
                  ),
                  Spacer(),
                  Text(
                    '$totalPrice L.E',
                    style: AppTextStyles.font16RobotoBlack,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomButton(
                  text: 'Checkout',
                  textStyle: AppTextStyles.font18RobotoWhite,
                  width: double.infinity,
                  onTap: () {
                    context.pushNamed(Routes.checkoutScreen, arguments: {
                      'cartModel':
                          BlocProvider.of<CartCubit>(context).cartItems,
                      'isFromCart': true
                    });
                  }),
            ],
          ),
        ));
  }
}
