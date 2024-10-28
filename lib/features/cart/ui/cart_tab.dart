import 'package:diva_shopping_app/features/cart/ui/widgets/cart_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/text_styles.dart';
import '../logic/cubit/cart_cubit.dart';
import '../logic/cubit/cart_states.dart';
import 'cart_with_items_screen.dart';
import 'cart_without_items_screen.dart';

class CartTab extends StatelessWidget {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              const CartTopBar(),
              SizedBox(
                height: 10.h,
              ),
              BlocBuilder<CartCubit, CartStates>(
                buildWhen: (previous, current) =>
                    current is CartSuccess || current is CartFailure,
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (cartItems) {
                      if (cartItems.isEmpty) {
                        return const CartWithoutItemsScreen();
                      }
                      return CartWithItemsScreen(cartItems);
                    },
                    failure: (errorMessage) {
                      return Center(
                        child: Text(
                          errorMessage,
                          style: AppTextStyles.font22RobotoBlack,
                        ),
                      );
                    },
                    orElse: () {
                      return const CartWithoutItemsScreen();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
