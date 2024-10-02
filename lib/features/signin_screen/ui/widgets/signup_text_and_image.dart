import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupTextAndImage extends StatelessWidget {
  const SignupTextAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text(
        "Sign Up",
        style: AppTextStyles.font24LibreBaskervilleBlack,
      ),
      Image.asset(
        "assets/images/mobile-login-pana.png",
        height: 230.h,
        width: 230.w,
      ),
    ]);
  }
}
