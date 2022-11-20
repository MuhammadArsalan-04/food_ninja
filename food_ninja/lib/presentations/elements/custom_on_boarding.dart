import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/elements/custom_button.dart';

class CustomOnBoarding extends StatelessWidget {
  final String imagePath;
  final String boldText;
  final String mediumText;
  final String buttonText;
  final Function onPressed;

  CustomOnBoarding({
    required this.boldText,
    required this.buttonText,
    required this.imagePath,
    required this.mediumText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 400,
          width: double.infinity,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              boldText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  //fontFamily: 'BentonSans Bold',
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              width: 244,
              child: Text(
                mediumText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    //fontFamily: 'BentonSans Book',
                    ),
              ),
            ),
          ],
        ),
        CustomButton(
          text: buttonText,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
