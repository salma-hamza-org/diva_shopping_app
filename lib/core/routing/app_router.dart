import 'package:diva_shopping_app/core/di/dependency_injection.dart';
import 'package:diva_shopping_app/core/routing/routes_names.dart';
import 'package:diva_shopping_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:diva_shopping_app/features/categories/logic/cubit/category_cubit.dart';
import 'package:diva_shopping_app/features/checkout/ui/checkout_screen.dart';
import 'package:diva_shopping_app/features/home/logic/home_cubit.dart';
import 'package:diva_shopping_app/features/home/ui/home_page_layout.dart';
import 'package:diva_shopping_app/features/login_screen/logic/cubit/login_cubit.dart';
import 'package:diva_shopping_app/features/payment/logic/payment_cubit.dart';
import 'package:diva_shopping_app/features/profile_settings/ui/profile_settings.dart';
import 'package:diva_shopping_app/features/signin_screen/logic/cubit/sign_up_cubit.dart';
import 'package:diva_shopping_app/features/wish_list/logic/cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/login_screen/ui/login_screen.dart';
import '../../features/product_details/product_details_screen.dart';
import '../../features/signin_screen/ui/signin_screen.dart';
import '../../features/splash_screen/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments as Map<String, dynamic>?;
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.signInScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignInScreen(),
          ),
        );

      case Routes.homePageLayout:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<HomeCubit>()..getAllProducts(),
              ),
              BlocProvider(
                create: (context) => getIt<CategoryCubit>()
                  ..getCategoriesList()
                  ..getCategoryProducts('electronics'),
              ),
              BlocProvider(
                create: (context) => getIt<FavoriteCubit>()..loadFavorites(),
              ),
              BlocProvider(
                create: (context) => getIt<CartCubit>()..getAllCartItems(),
              ),
            ],
            child: const HomePageLayout(),
          ),
        );

      case Routes.productDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<FavoriteCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt<CartCubit>()..getAllCartItems(),
              ),
            ],
            child: ProductDetailsScreen(
              productModel: args?['productModel'],
              productList: args?['productList'],
            ),
          ),
        );
      case Routes.profileSettingsScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileSettings(),
        );
      case Routes.checkoutScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<CartCubit>()..getAllCartItems(),
              ),
              BlocProvider(
                create: (context) => getIt<PaymentCubit>(),
              ),
            ],
            child: CheckoutScreen(
                cartModel: args?['cartModel'], isFromCart: args?['isFromCart']),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
