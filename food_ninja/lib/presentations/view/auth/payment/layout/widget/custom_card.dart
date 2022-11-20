import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/configurations/constants.dart';

class CustomCard extends StatelessWidget {
  String imagePath;
  bool isSelected;

  CustomCard({
    required this.imagePath,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Constatnts.kPrimaryColor : Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Image.asset(imagePath),
      ),
    );
  }
}
