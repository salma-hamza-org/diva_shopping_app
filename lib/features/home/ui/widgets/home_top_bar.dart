import 'package:diva_shopping_app/core/helpers/extentions.dart';
import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/routing/routes_names.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:diva_shopping_app/features/cart/ui/widgets/cart_icon_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.profileSettingsScreen);
          },
          child: Image.asset('assets/images/user_avatar.png',
            scale: 3,
          ),
        ),
        horizontalSpace(10),
        Text('Welcome, Dina ',
          style: AppTextStyles.font14RobotoBlack,
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
                  'assets/images/cart-plus-fill.png',
                  height: 20.h,
                ),
              ),
            ),
            const CartIconBuilder(),
          ],
        ),


      ],
    );
  }
}
