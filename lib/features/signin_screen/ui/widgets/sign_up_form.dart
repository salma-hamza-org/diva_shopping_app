import 'package:diva_shopping_app/features/signin_screen/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/cubit/sign_up_cubit.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordObscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;
  final FocusNode passwordFocusNode = FocusNode();
  bool showPasswordValidations = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerListener();
    passwordFocusNode.addListener(() {
      setState(() {
        showPasswordValidations = passwordFocusNode.hasFocus;
      });
    });
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'First Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid first name';
              }
            },
            controller: context.read<SignupCubit>().firstnameController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Last Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid last name';
              }
            },
            controller: context.read<SignupCubit>().lastnameController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Username',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid username';
              }
            },
            controller: context.read<SignupCubit>().userNameController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Phone Number',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
            controller: context.read<SignupCubit>().phoneController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<SignupCubit>().emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: 'Password',
            isObscureText: isPasswordObscureText,
            controller: context.read<SignupCubit>().passwordController,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
            focusNode: passwordFocusNode,
          ),
          if (showPasswordValidations)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: PasswordValidations(
                hasLowerCase: hasLowercase,
                hasUpperCase: hasUppercase,
                hasSpecialCharacters: hasSpecialCharacters,
                hasNumber: hasNumber,
                hasMinLength: hasMinLength,
              ),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
