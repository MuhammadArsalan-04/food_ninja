import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/view/auth/signup_process/layout/body.dart';

class SignUpProcess extends StatelessWidget {
  const SignUpProcess({Key? key}) : super(key: key);

  static const routeName = 'sign-up-process';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(14.0),
        child: SingleChildScrollView(child: SignUpProcessBody()),
      ),
    );
  }
}
