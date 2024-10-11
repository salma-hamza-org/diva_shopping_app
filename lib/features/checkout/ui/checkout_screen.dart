import 'package:diva_shopping_app/core/shared_widgets/custom_button.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:diva_shopping_app/features/checkout/ui/widgets/address_section.dart';
import 'package:diva_shopping_app/features/checkout/ui/widgets/order_items_section.dart';
import 'package:diva_shopping_app/features/checkout/ui/widgets/payment_details_section.dart';
import 'package:diva_shopping_app/features/checkout/ui/widgets/radio_buttons_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/spacing.dart';

class CheckoutScreen extends StatelessWidget {

  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Checkout',
            style: AppTextStyles.font24RobotoBlack,
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.add_shopping_cart))
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
                  OrderItemsSection(),
                  verticalSpace(16),
                  RadioButtonsSection(selectedValue: selectedValue),
                  verticalSpace(12),
                  PaymentDetailsSection(),
                  verticalSpace(24.h),
                  CustomButton(
                      text: 'Complete Purchase',
                      textStyle: AppTextStyles.font18RobotoWhite,
                      width: 330.w,
                      onTap: () {})
                ]),
          ),
        ));
  }
}
