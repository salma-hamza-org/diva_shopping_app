import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../logic/cubit/cart_cubit.dart';

class CartTopBar extends StatelessWidget {
  const CartTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.0.r,
            backgroundColor: Colors.white,
            child: Image.asset(
              'assets/images/arrow_back.png',
            ),
          ),
          const Spacer(),
          Text(
            "Cart",
            style: AppTextStyles.font24RobotoBlack,
          ),
          const Spacer(),
          Stack(
            alignment: Alignment.topRight,
            children: [
              CircleAvatar(
                radius: 20.0.r,
                backgroundColor: Colors.white,
                child: Center(
                  child: Image.asset(
                    'assets/images/cart-plus-fill.png',height: 20.h,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 8.r,
                backgroundColor: AppColors.red,
                child: Center(
                  child: Text(BlocProvider.of<CartCubit>(context)
                      .cartItems
                      .length
                      .toString(),style: AppTextStyles.font12RobotoBlack.copyWith(color: Colors.white),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
