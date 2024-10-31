import 'package:diva_shopping_app/core/helpers/constants.dart';
import 'package:diva_shopping_app/core/helpers/shared_pref.dart';
import 'package:diva_shopping_app/core/networking/dio_factory.dart';
import 'package:diva_shopping_app/features/login_screen/data/repos/login_repo.dart';
import 'package:diva_shopping_app/features/login_screen/logic/cubit/login_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    if (formKey.currentState?.validate() ?? false) {
      emit(const LoginState.loading());
      try {
        final response = await _loginRepo.login(
          emailController.text,
          passwordController.text,
        );
        await saveUserToken(FirebaseAuth.instance.currentUser!.uid);
        emit(LoginState.success(response));
      } on FirebaseAuthException catch (e) {
        emit(LoginState.error(
          error: e.message ?? 'Something went wrong!',
        ));
      } catch (e) {
        emit(LoginState.error(error: e.toString()));
      }
    }
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
