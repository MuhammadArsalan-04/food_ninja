import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/configurations/resources.dart';
import 'package:food_ninja/presentations/elements/custom_back_button.dart';
import 'package:food_ninja/presentations/elements/custom_button.dart';
import 'package:food_ninja/presentations/helper/navigation_helper.dart';
import 'package:food_ninja/presentations/view/auth/payment/layout/widget/custom_card.dart';
import 'package:food_ninja/presentations/view/auth/upload_photo/upload_photo.dart';

import '../../../../elements/custom_text.dart';

class PaymentBody extends StatefulWidget {
  @override
  State<PaymentBody> createState() => _PaymentBodyState();
}

class _PaymentBodyState extends State<PaymentBody> {
  String selectedPaymentMethod = '';
  bool paypal = false;
  bool visa = false;
  bool payoneer = false;

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 16,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        CustomBackButton(),
        sizedBox,
        Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: CustomText(
            text: "Payment Method",
            fontSize: 25,
            fontWeight: FontWeight.w700,
            softwrap: true,
          ),
        ),
        sizedBox,
        Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: CustomText(
            text:
                'This data will be displayed in your account \nprofile for security',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            softwrap: true,
            textColor: Colors.black,
          ),
        ),
        sizedBox,
        sizedBox,
        GestureDetector(
          onTap: () {
            setState(() {
              paypal = true;
              visa = false;
              payoneer = false;
              selectedPaymentMethod = "Paypal";
            });
          },
          child: CustomCard(imagePath: Resources.kPayPal, isSelected: paypal),
        ),
        sizedBox,
        GestureDetector(
            onTap: () {
              setState(() {
                paypal = false;
                visa = true;
                payoneer = false;
                selectedPaymentMethod = "Visa";
              });
            },
            child: CustomCard(
              imagePath: Resources.kVisa,
              isSelected: visa,
            )),
        sizedBox,
        GestureDetector(
            onTap: () {
              setState(() {
                paypal = false;
                visa = false;
                payoneer = true;

                selectedPaymentMethod = "Payoneer";
              });
            },
            child: CustomCard(
              imagePath: Resources.kPayoneer,
              isSelected: payoneer,
            )),
        sizedBox,
        const SizedBox(
          height: 180,
        ),
        CustomButton(
          text: 'Next',
          onPressed: () {
            NavigationHelper.pushNamedRoute(context, UploadPhoto.routeName);
          },
        ),
      ],
    );
  }
}
