import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:diva_shopping_app/core/widgets/app_text_button.dart';
import 'package:diva_shopping_app/features/signin_screen/logic/cubit/sign_up_cubit.dart';
import 'package:diva_shopping_app/features/signin_screen/ui/widgets/already_have_account_text.dart';
import 'package:diva_shopping_app/features/signin_screen/ui/widgets/sign_up_bloc_listener.dart';
import 'package:diva_shopping_app/features/signin_screen/ui/widgets/sign_up_form.dart';
import 'package:diva_shopping_app/features/signin_screen/ui/widgets/signup_text_and_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
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
                const SignupTextAndImage(),
                verticalSpace(20),
                const SignupForm(),
                verticalSpace(40),
                AppTextButton(
                    buttonText: "Sign Up",
                    textStyle: AppTextStyles.font18RobotoWhite,
                    onPressed: () {
                      validateThenDoSignup(context);
                    }),
                verticalSpace(16),
                const AlreadyHaveAccountText(),
                const SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
