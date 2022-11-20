import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/elements/custom_on_boarding.dart';
import 'package:food_ninja/presentations/view/auth/login/login.dart';

import '../../helper/navigation_helper.dart';

class OnBoarding2 extends StatelessWidget {
  static const routeName = 'onBoarding2';
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomOnBoarding(
        boldText: 'Food Ninja is Where Your \nComfort Food Lives',
        buttonText: 'Next',
        imagePath: 'assets/images/Illustration2.png',
        mediumText: 'Enjoy a fast and smooth food delivery at your doorstep',
        onPressed: () {
          NavigationHelper.pushNamedReplacementRoute(context, Login.routeName);
        },
      ),
    );
  }
}
