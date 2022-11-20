import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String imagePath;
  CustomCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Image.asset(imagePath),
      ),
    );
  }
}
