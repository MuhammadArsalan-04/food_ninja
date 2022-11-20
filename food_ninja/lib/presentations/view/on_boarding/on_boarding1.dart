import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/view/on_boarding/on_boarding2.dart';
import 'package:food_ninja/presentations/elements/custom_on_boarding.dart';
import 'package:food_ninja/presentations/helper/navigation_helper.dart';

class OnBoarding1 extends StatelessWidget {
  static const routeName = 'onBoarding1';
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomOnBoarding(
          boldText: 'Find your  Comfort \nFood here',
          buttonText: 'Next',
          imagePath: 'assets/images/Illustartion.png',
          mediumText:
              'Here You Can find a chef or dish for every taste and color. Enjoy!',
          onPressed: () {
            NavigationHelper.pushNamedReplacementRoute(
                context, OnBoarding2.routeName);
          }),
    );
  }
}
