import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartWithoutItemsScreen extends StatelessWidget {
  const CartWithoutItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 200.h,
        ),
        Icon(
          Icons.shopping_cart_rounded,
          size: 150.r,
          color: Colors.black87,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text('No Items !',
            style: AppTextStyles.font24LibreBaskervilleBlack
                .copyWith(fontSize: 28.sp))
      ],
    );
  }
}
