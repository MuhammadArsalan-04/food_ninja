import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/view/splash_screen/layout/widget/splash_screen_view.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenView(),
    );
  }
}
