import 'package:diva_shopping_app/core/helpers/constants.dart';
import 'package:diva_shopping_app/core/helpers/shared_pref.dart';
import 'package:diva_shopping_app/core/networking/dio_factory.dart';
import 'package:diva_shopping_app/features/login_screen/data/models/login_request_body.dart';
import 'package:diva_shopping_app/features/login_screen/data/repos/login_repo.dart';
import 'package:diva_shopping_app/features/login_screen/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        username: userNameController.text,
        password: passwordController.text,
      ),
    );

    response.when(success: (loginResponse) async{
      await saveUserToken(loginResponse.token ?? '');
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
