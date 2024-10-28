import 'package:diva_shopping_app/core/helpers/extentions.dart';
import 'package:diva_shopping_app/core/routing/routes_names.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don’t have an account?',
            style: AppTextStyles.font13RobotoBlack,
          ),
          TextSpan(
            text: ' Sign Up',
            style: AppTextStyles.font13RobotoPink,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signInScreen);
              },
          ),
        ],
      ),
    );
  }
}
