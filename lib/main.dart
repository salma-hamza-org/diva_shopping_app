import 'package:diva_shopping_app/core/di/dependency_injection.dart';
import 'package:diva_shopping_app/core/helpers/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'diva_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
  await setupGetIt();

  runApp(DivaApp(
    appRouter: AppRouter(),
  ));
}
