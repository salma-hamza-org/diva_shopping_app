import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:diva_shopping_app/core/widgets/app_text_button.dart';
import 'package:diva_shopping_app/features/login_screen/logic/cubit/login_cubit.dart';
import 'package:diva_shopping_app/features/login_screen/ui/widgets/dont_have_account_text.dart';
import 'package:diva_shopping_app/features/login_screen/ui/widgets/email_and_password.dart';
import 'package:diva_shopping_app/features/login_screen/ui/widgets/login_bloc_listener.dart';
import 'package:diva_shopping_app/features/login_screen/ui/widgets/login_text_and_image.dart';
import 'package:diva_shopping_app/features/login_screen/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const EmailAndPasswoed(),
                verticalSpace(40),
                AppTextButton(
                    buttonText: "Sign In",
                    textStyle: AppTextStyles.font18RobotoWhite,
                    onPressed: () {
                      validateThenDoLogin(context);
                    }),
                verticalSpace(16),
                const TermsAndConditionsText(),
                verticalSpace(16),
                const AlreadyHaveAccountText(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
