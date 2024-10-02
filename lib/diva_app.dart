import 'package:diva_shopping_app/core/di/dependency_injection.dart';
import 'package:diva_shopping_app/features/login_screen/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes_names.dart';
import 'core/theming/colors.dart';

class DivaApp extends StatelessWidget {
  AppRouter appRouter;
   DivaApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder:(context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<LoginCubit>(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Diva shopping app',
            theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: AppColors.pink)),
            initialRoute:Routes.splashScreen,
            onGenerateRoute:(settings) => appRouter.generateRoute(settings),
          ),
        );
      },
    );
  }
}