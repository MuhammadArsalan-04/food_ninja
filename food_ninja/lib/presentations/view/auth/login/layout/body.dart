import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/configurations/resources.dart';
import 'package:food_ninja/presentations/elements/custom_button.dart';
import 'package:food_ninja/presentations/elements/custom_text.dart';
import 'package:food_ninja/presentations/elements/custom_text_button.dart';
import 'package:food_ninja/presentations/helper/navigation_helper.dart';
import 'package:food_ninja/presentations/view/auth/login/layout/widget/auth_screen_widget.dart';
import 'package:food_ninja/presentations/view/auth/login/layout/widget/login_with.dart';
import 'package:food_ninja/presentations/view/auth/signup/signup.dart';

import '../../../../elements/custom_textfield.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AuthScreenWidget(text: "Login To Your Account"),
          Column(
            children: [
              CustomTextField(hintText: 'Email'),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(hintText: 'Password'),
            ],
          ),
          CustomText(
            text: 'Or Continue With',
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LoginWithView(
                imagePath: Resources.kFacebook,
                text: 'Facebook',
              ),
              LoginWithView(imagePath: Resources.kGoogle, text: 'Google'),
            ],
          ),
          CustomTextButton(onPressed: () {}, text: 'Forgot Your Password?'),
          CustomButton(text: 'Login', onPressed: () {}),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              CustomTextButton(
                  onPressed: () {
                    NavigationHelper.pushNamedReplacementRoute(
                      context,
                      SignUp.routeName,
                    );
                  },
                  text: 'Register')
            ],
          ),
        ],
      ),
    );
  }
}
