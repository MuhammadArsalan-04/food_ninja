import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/view/auth/login/layout/body.dart';

class Login extends StatelessWidget {
  static const routeName = 'login-screen';
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: LoginBody(),
        ),
      ),
    );
  }
}
