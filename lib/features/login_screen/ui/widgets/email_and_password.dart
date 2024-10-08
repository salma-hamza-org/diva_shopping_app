import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/widgets/app_text_form_field.dart';
import 'package:diva_shopping_app/features/login_screen/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPasswoed extends StatefulWidget {
  const EmailAndPasswoed({super.key});

  @override
  State<EmailAndPasswoed> createState() => _EmailAndPasswoedState();
}

class _EmailAndPasswoedState extends State<EmailAndPasswoed> {
  bool isObscureText = true;
  late TextEditingController passwordController;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  }


  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              hintText: "User Name",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid user name';
                }
              },
              controller: context.read<LoginCubit>().userNameController,
            ),
            verticalSpace(18),
            AppTextFormField(
              controller: context.read<LoginCubit>().passwordController,
              hintText: "Password",
              isObscureText: isObscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                    isObscureText ? Icons.visibility : Icons.visibility_off),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
              },
            ),
          ],
        ));
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
