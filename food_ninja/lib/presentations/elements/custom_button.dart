import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/elements/custom_gradient.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  FontWeight? fontWeight;
  final String text;
  Function onPressed;

  CustomButton({
    this.height = 56,
    required this.text,
    this.width = 160,
    required this.onPressed,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white70,
      onTap: () => onPressed(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: CustomGradient.linearGradient(),
        ),
        height: height,
        width: width,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            //fontFamily: 'BentonSans Bold',
            fontWeight: fontWeight ?? FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
