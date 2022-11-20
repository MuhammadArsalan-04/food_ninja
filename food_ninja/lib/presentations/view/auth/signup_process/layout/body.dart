import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/elements/custom_back_button.dart';
import 'package:food_ninja/presentations/elements/custom_button.dart';
import 'package:food_ninja/presentations/elements/custom_text.dart';
import 'package:food_ninja/presentations/elements/custom_textfield.dart';
import 'package:food_ninja/presentations/helper/navigation_helper.dart';
import 'package:food_ninja/presentations/view/auth/payment/payment.dart';

class SignUpProcessBody extends StatelessWidget {
  const SignUpProcessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 20,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        CustomBackButton(),
        sizedBox,
        Container(
          width: 240,
          child: CustomText(
            text: "Fill in your bio to get started",
            fontSize: 25,
            fontWeight: FontWeight.w700,
            softwrap: true,
          ),
        ),
        sizedBox,
        Container(
          width: 240,
          child: CustomText(
            text:
                'This data will be displayed in your account profile for security',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            softwrap: true,
            textColor: Colors.black,
          ),
        ),
        Column(
          children: [
            sizedBox,
            CustomTextField(hintText: 'First Name'),
            sizedBox,
            CustomTextField(hintText: 'Last Name'),
            sizedBox,
            CustomTextField(hintText: 'Mobile Number'),
          ],
        ),
        const SizedBox(
          height: 200,
        ),
        Container(
          alignment: Alignment.center,
          child: CustomButton(
              text: 'Next',
              onPressed: () =>
                  NavigationHelper.pushNamedRoute(context, Payment.routeName)),
        ),
      ],
    );
  }
}
