import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:diva_shopping_app/core/widgets/app_text_button.dart';
import 'package:diva_shopping_app/core/widgets/app_text_form_field.dart';
import 'package:diva_shopping_app/features/login_screen/ui/widgets/already_have_account_text.dart';
import 'package:diva_shopping_app/features/login_screen/ui/widgets/login_text_and_image.dart';
import 'package:diva_shopping_app/features/login_screen/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lighterGray,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LoginTextAndImage(),
                verticalSpace(20),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppTextFormField(hintText: "User Name"),
                        verticalSpace(18),
                        AppTextFormField(
                          hintText: "Password",
                          isObscureText: isObscureText,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(isObscureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                        ),
                        verticalSpace(40),
                        AppTextButton(
                            buttonText: "Sign In",
                            textStyle: AppTextStyles.font18RobotoWhite,
                            onPressed: () {}),
                        verticalSpace(16),
                        const TermsAndConditionsText(),
                        verticalSpace(16),
                        const AlreadyHaveAccountText(),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
