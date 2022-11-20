import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/configurations/resources.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Resources.klogoBackground),
          alignment: Alignment.topCenter,
          opacity: 0.8,
        ),
      ),
      child: Center(
        child: Image.asset(
          Resources.klogo,
        ),
      ),
    );
  }
}
