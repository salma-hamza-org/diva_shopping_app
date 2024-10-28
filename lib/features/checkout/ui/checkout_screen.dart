import 'package:diva_shopping_app/core/shared_widgets/custom_button.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:diva_shopping_app/features/checkout/ui/widgets/address_section.dart';
import 'package:diva_shopping_app/features/checkout/ui/widgets/order_items_section.dart';
import 'package:diva_shopping_app/features/checkout/ui/widgets/payment_details_section.dart';
import 'package:diva_shopping_app/features/checkout/ui/widgets/radio_buttons_section.dart';
import 'package:diva_shopping_app/features/payment/ui/payment_bloc_listner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../cart/ui/widgets/cart_icon_builder.dart';
import '../../payment/logic/payment_cubit.dart';

class CheckoutScreen extends StatelessWidget {
  List<CartModel> cartModel;
  bool isFromCart;

  CheckoutScreen({required this.cartModel, required this.isFromCart});

  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return PaymentBlocListener(
      isFromCart: isFromCart,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Checkout',
              style: AppTextStyles.font24RobotoBlack,
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CircleAvatar(
                      radius: 20.0.r,
                      backgroundColor: Colors.transparent,
                      child: Center(
                        child: Image.asset(
                          'assets/images/cart-plus-fill.png',
                          height: 20.h,
                        ),
                      ),
                    ),
                    const CartIconBuilder(),
                  ],
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AddressSection(),
                    verticalSpace(30.h),
                    OrderItemsSection(cartModel),
                    verticalSpace(16),
                    RadioButtonsSection(selectedValue: selectedValue),
                    verticalSpace(12),
                    PaymentDetailsSection(cartModel),
                    verticalSpace(24.h),
                    CustomButton(
                        text: 'Complete Purchase',
                        textStyle: AppTextStyles.font18RobotoWhite,
                        width: 330.w,
                        onTap: () {
                          BlocProvider.of<PaymentCubit>(context)
                              .completePayment(cartModel, 'usd');
                        })
                  ]),
            ),
          )),
    );
  }
}
