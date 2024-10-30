import 'package:diva_shopping_app/core/di/dependency_injection.dart';
import 'package:diva_shopping_app/core/helpers/bloc_observer.dart';
import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/helpers/constants.dart';
import 'core/helpers/shared_pref.dart';
import 'core/routing/app_router.dart';
import 'diva_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
  await checkIfLoggedInUser();
  await Hive.initFlutter();
  Hive.registerAdapter(CartModelAdapter());
  Hive.registerAdapter(ProductModelAdapter());
  Hive.registerAdapter(RatingAdapter());
  await setupGetIt();
  Stripe.publishableKey = stripePublishableKey;

  runApp(DivaApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (userToken == null || userToken.isEmpty) {
    isLoggedInUser = false;
  } else {
    isLoggedInUser = true;
  }
}
