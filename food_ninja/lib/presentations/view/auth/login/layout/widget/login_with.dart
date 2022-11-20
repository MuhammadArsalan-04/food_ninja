import 'package:flutter/material.dart';

class LoginWithView extends StatelessWidget {
  String text;
  String imagePath;

  LoginWithView({required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 60,
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                //fontFamily: 'BentonSans Bold',
              ),
            )
          ],
        ),
      ),
    );
  }
}
