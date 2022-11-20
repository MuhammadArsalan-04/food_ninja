import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/configurations/resources.dart';
import 'package:food_ninja/presentations/elements/custom_button.dart';
import 'package:food_ninja/presentations/elements/custom_text.dart';
import 'package:food_ninja/presentations/elements/custom_text_button.dart';
import 'package:food_ninja/presentations/elements/custom_textfield.dart';
import 'package:food_ninja/presentations/helper/navigation_helper.dart';
import 'package:food_ninja/presentations/view/auth/login/layout/widget/auth_screen_widget.dart';
import 'package:food_ninja/presentations/view/auth/login/login.dart';
import 'package:food_ninja/presentations/view/auth/signup/layout/widget/checks_view.dart';
import 'package:food_ninja/presentations/view/auth/signup_process/sign_up_process.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AuthScreenWidget(text: 'Sign Up For Free'),
          CustomTextField(
            hintText: 'username',
            prefixIcon: Resources.kProfileIcon,
            textInputType: TextInputType.emailAddress,
          ),
          CustomTextField(
            hintText: 'Email',
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            prefixIcon: Resources.kmessageIcon,
          ),
          CustomTextField(
            hintText: 'Password',
            isObsecure: true,
            prefixIcon: Resources.kLockIcon,
            suffixIcon: Resources.keye,
          ),
          ChecksView(text: 'Keep Me Signed In'),
          ChecksView(text: 'Email Me About Special Pricing'),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              text: 'Create Account',
              onPressed: () {
                NavigationHelper.pushNamedRoute(
                    context, SignUpProcess.routeName);
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'already have an account?',
                fontSize: 12,
              ),
              CustomTextButton(
                onPressed: () => NavigationHelper.pushNamedReplacementRoute(
                  context,
                  Login.routeName,
                ),
                text: 'Login',
                fontSize: 12,
              ),
            ],
          )
        ],
      ),
    );
  }
}
