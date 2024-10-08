import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          Icon(
            Icons.shopping_cart,
            size: 30.r,
          ),
        ],
      ),
    );
  }
}