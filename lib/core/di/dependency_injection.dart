import 'package:dio/dio.dart';
import 'package:diva_shopping_app/core/networking/dio_factory.dart';
import 'package:diva_shopping_app/features/login_screen/data/repos/login_repo.dart';
import 'package:diva_shopping_app/features/login_screen/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

import '../networking/api_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
