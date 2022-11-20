import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/elements/custom_back_button.dart';
import 'package:food_ninja/presentations/elements/custom_button.dart';
import 'package:food_ninja/presentations/elements/custom_text.dart';
import 'package:food_ninja/presentations/helper/navigation_helper.dart';
import 'package:food_ninja/presentations/view/auth/confirmation/confirmation.dart';
import 'package:food_ninja/presentations/view/auth/location/layout/widget/location_card.dart';

class LocationBody extends StatelessWidget {
  const LocationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 20,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            CustomBackButton(),
            sizedBox,
            CustomText(
              text: 'Set Your Location ',
              fontWeight: FontWeight.w700,
              fontSize: 26,
            ),
            sizedBox,
            CustomText(
              text:
                  'This data will be displayed in your account \nprofile for security',
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            sizedBox,
            const LocationCard(),
            // const SizedBox(
            //   height: 240,
            // ),
          ],
        ),
        Container(
            height: 120,
            alignment: Alignment.center,
            child: CustomButton(
                text: 'Next',
                onPressed: () {
                  NavigationHelper.pushNamedRoute(
                      context, Confirmation.routeName);
                }))
      ],
    );
  }
}
