import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';
import '../../logic/cubit/cart_cubit.dart';
import '../../logic/cubit/cart_states.dart';

class CartIconBuilder extends StatelessWidget {
  const CartIconBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartStates>(
      builder: (context, state) {
        return CircleAvatar(
          radius: 8.r,
          backgroundColor: AppColors.red,
          child: Center(
            child: Text(
              BlocProvider.of<CartCubit>(context).cartItems.length.toString(),
              style:
                  AppTextStyles.font12RobotoBlack.copyWith(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
