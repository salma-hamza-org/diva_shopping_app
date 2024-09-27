import 'package:diva_shopping_app/core/routing/routes_names.dart';
import 'package:diva_shopping_app/features/home/ui/home_page_layout.dart';
import 'package:flutter/material.dart';
import '../../features/login_screen/ui/login_screen.dart';
import '../../features/signin_screen/ui/signin_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case Routes.signInScreen:
        return MaterialPageRoute(
          builder: (_) => const SignInScreen(),
        );

      case Routes.homePageLayout:
        return MaterialPageRoute(
          builder: (_) => const HomePageLayout(),
        );

      default:
        return null;
    }
  }
}