import 'package:diva_shopping_app/features/cart/ui/widgets/cart_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cart_with_items_screen.dart';

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
              CartWithItemsScreen()
            ],
          ),
        ),
      ),
    );
  }
}
