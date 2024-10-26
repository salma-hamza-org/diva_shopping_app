import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routes_names.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/text_styles.dart';
import '../../cart/logic/cubit/cart_cubit.dart';
import '../logic/payment_cubit.dart';
import '../logic/payment_state.dart';

class PaymentBlocListener extends StatelessWidget {
  bool isFromCart;
  Widget child;

  PaymentBlocListener(
      {super.key, required this.isFromCart, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentCubit, PaymentState>(
      listener: (context, state) {
        state.maybeWhen(
          loading: () => showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              content: Row(
                children: [
                  const CircularProgressIndicator(
                    color: AppColors.pink,
                    backgroundColor: AppColors.grey,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Processing Payment...",
                    style: AppTextStyles.font18RobotoPink,
                  ),
                ],
              ),
            ),
          ),
          success: () async {
            Navigator.of(context).pop(); // Close the loading dialog
            // Show success dialog
            if (isFromCart) {
              await BlocProvider.of<CartCubit>(context).clearCart();
            }
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(
                  "Payment Successful!",
                  style: AppTextStyles.font18RobotoPink,
                ),
                content: Text(
                  "Your payment was processed successfully!",
                  style: AppTextStyles.font16RobotoBlack,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(Routes.homePageLayout); // Close dialog
                    },
                    child: Text("OK", style: AppTextStyles.font14RobotoPink),
                  ),
                ],
              ),
            );
          },
          failure: (errorMessage) {
            Navigator.of(context).pop();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Payment Failed",
                    style: AppTextStyles.font18RobotoPink),
                content: Text("Payment has been canceled.",
                    style: AppTextStyles.font16RobotoBlack),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close dialog
                    },
                    child: Text("OK", style: AppTextStyles.font14RobotoPink),
                  ),
                ],
              ),
            );
          },
          orElse: () {
            {
              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Payment Failed",
                      style: AppTextStyles.font18RobotoPink),
                  content: Text(
                      "Oops! something went wrong please try again later.",
                      style: AppTextStyles.font16RobotoBlack),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close dialog
                      },
                      child: Text("OK", style: AppTextStyles.font14RobotoPink),
                    ),
                  ],
                ),
              );
            }
          },
        );
      },
      child: child,
    );
  }
}
