import 'package:diva_shopping_app/features/signin_screen/logic/cubit/sign_up_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/sign_up_repo.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    if (formKey.currentState?.validate() ?? false) {
      emit(const SignupState.signupLoading());
      try {
        final response = await _signupRepo.signUp(
          emailController.text,
          confirmPasswordController.text,
        );
        emit(SignupState.signupSuccess(response));
      } on FirebaseAuthException catch (e) {
        emit(SignupState.signupError(
            error: e.message ?? 'Something went wrong!'));
      } catch (e) {
        emit(SignupState.signupError(error: e.toString()));
      }
    }
  }
}
