import 'package:dio/dio.dart';
import 'package:diva_shopping_app/core/networking/dio_factory.dart';
import 'package:diva_shopping_app/features/cart/data/repo/cart_repo.dart';
import 'package:diva_shopping_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:diva_shopping_app/features/categories/data/repos/category_repo.dart';
import 'package:diva_shopping_app/features/categories/logic/cubit/category_cubit.dart';
import 'package:diva_shopping_app/features/home/data/repos/home_repo.dart';
import 'package:diva_shopping_app/features/home/logic/home_cubit.dart';
import 'package:diva_shopping_app/features/login_screen/data/repos/login_repo.dart';
import 'package:diva_shopping_app/features/login_screen/logic/cubit/login_cubit.dart';
import 'package:diva_shopping_app/features/payment/data/repo/payment_service.dart';
import 'package:diva_shopping_app/features/payment/logic/payment_cubit.dart';
import 'package:diva_shopping_app/features/signin_screen/data/repos/sign_up_repo.dart';
import 'package:diva_shopping_app/features/signin_screen/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/wish_list/data/repo/favorite_repo.dart';
import '../../features/wish_list/logic/cubit/favorite_cubit.dart';
import '../networking/api_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  // category
  getIt.registerLazySingleton<CategoryRepo>(() => CategoryRepo(getIt()));
  getIt.registerFactory<CategoryCubit>(() => CategoryCubit(getIt()));

  // favorite
  getIt.registerLazySingleton<FavoriteRepo>(() => FavoriteRepo());
  getIt.registerFactory<FavoriteCubit>(
      () => FavoriteCubit(getIt<FavoriteRepo>()));

  //cart
  getIt.registerLazySingleton<CartRepo>(() => CartRepo());
  getIt.registerFactory<CartCubit>(() => CartCubit(getIt()));

  //payment
  getIt.registerLazySingleton<PaymentService>(() => PaymentService(dio: dio));
  getIt.registerFactory<PaymentCubit>(() => PaymentCubit(getIt(), getIt()));
}
