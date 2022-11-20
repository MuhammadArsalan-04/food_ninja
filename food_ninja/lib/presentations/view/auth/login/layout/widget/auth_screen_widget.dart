import 'package:flutter/material.dart';
import '../../../../../configurations/resources.dart';

class AuthScreenWidget extends StatelessWidget {
  final String text;

  AuthScreenWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 340,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  Resources.klogoBackground,
                ),
                fit: BoxFit.cover,
                opacity: 0.7),
          ),
          child: Image.asset(Resources.klogo),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              //fontFamily: 'BentonSans Bold'
              ),
        ),
      ],
    );
  }
}
