import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

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
          ),
        ],
      ),
    );
  }
}
