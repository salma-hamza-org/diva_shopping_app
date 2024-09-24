import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:diva_shopping_app/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../core/theming/colors.dart';
import '../login_screen/ui/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize the controller but don't start the animation right away
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500), // Animation duration
    );
    Future.delayed((const Duration(milliseconds: 1000)), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: LottieBuilder.asset(
          'assets/lottie/splash_screen.json',
          controller: _controller,
          onLoaded: (composition) {
            _controller.duration = composition.duration;
          },
          repeat: true, // Only play once
        ),
      ),
      backgroundColor: AppColors.lightPink,
      nextScreen: const LoginScreen(),
      splashIconSize: 300.r,
    );
  }
}
