import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTextAndImage extends StatelessWidget {
  const LoginTextAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text(
        "Welcome Back",
        style: AppTextStyles.font24LibreBaskervilleBlack,
      ),
      Image.asset(
        "assets/images/tablet-login-pana.png",
        height: 230.h,
        width: 230.w,
      ),
    ]);
  }
}
