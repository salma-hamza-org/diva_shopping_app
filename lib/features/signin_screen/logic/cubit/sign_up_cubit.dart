import 'package:diva_shopping_app/features/signin_screen/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/sign_up_request_body.dart';
import '../../data/repos/sign_up_repo.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    if (!formKey.currentState!.validate()) return;
    emit(const SignupState.signupLoading());

    final signupRequestBody = SignupRequestBody(
      email: emailController.text,
      username: userNameController.text,
      password: passwordController.text,
      name: Name(
        firstname: firstnameController.text,
        lastname: lastnameController.text,
      ),
      phone: phoneController.text,
    );

    final response = await _signupRepo.signup(signupRequestBody);
    response.when(
      success: (signupResponse) {
        emit(SignupState.signupSuccess(signupResponse));
      },
      failure: (error) {
        emit(SignupState.signupError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
