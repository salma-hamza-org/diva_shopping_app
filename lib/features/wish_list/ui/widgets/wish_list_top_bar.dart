import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishListTopBar extends StatelessWidget {
  const WishListTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          "Wishlist",
          style: AppTextStyles.font24RobotoBlack,
        ),
        const Spacer(),
        CircleAvatar(
          radius: 20.0.r,
          backgroundColor: Colors.white,
          child: Image.asset(
            'assets/images/cart-plus-fill.png',
          ),
        ),
      ],
    );
  }
}
