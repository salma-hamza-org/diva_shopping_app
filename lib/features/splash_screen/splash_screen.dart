import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../core/routing/routes_names.dart';
import '../../core/theming/colors.dart';

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
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );

    Future.delayed(const Duration(milliseconds: 1000), () {
      _controller.forward();
    });

    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPink,
      body: Center(
        child: LottieBuilder.asset(
          'assets/lottie/splash_screen.json',
          controller: _controller,
          onLoaded: (composition) {
            _controller.duration = composition.duration;
          },
          repeat: false,
        ),
      ),
    );
  }
}
