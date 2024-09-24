import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: AppTextStyles.font13RobotoDarkGrey,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: AppTextStyles.font13CairoPink,
          ),
          TextSpan(
            text: ' and',
            style: AppTextStyles.font13RobotoDarkGrey.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: AppTextStyles.font13CairoPink,
          ),
        ],
      ),
    );
  }
}
