import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/configurations/constants.dart';

class CustomBackButton extends StatelessWidget {
  Alignment? alignment;

  CustomBackButton({this.alignment});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment ?? Alignment.centerLeft,
      width: double.infinity,
      child: Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
          color: Constatnts.kBackArrowBackgroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Constatnts.kBackArrowColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
