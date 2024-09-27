import 'package:flutter/material.dart';
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Diva shopping app',
          theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: AppColors.pink)),
          initialRoute:Routes.homePageLayout,
          // initialRoute:Routes.loginScreen,
          onGenerateRoute:(settings) => appRouter.generateRoute(settings),
        );
      },
    );
  }
}