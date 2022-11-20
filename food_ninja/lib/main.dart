import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/view/auth/confirmation/confirmation.dart';
import 'package:food_ninja/presentations/view/auth/location/location.dart';
import 'package:food_ninja/presentations/view/auth/login/login.dart';
import 'package:food_ninja/presentations/view/auth/payment/payment.dart';
import 'package:food_ninja/presentations/view/auth/signup/signup.dart';
import 'package:food_ninja/presentations/view/auth/signup_process/sign_up_process.dart';
import 'package:food_ninja/presentations/view/auth/upload_photo/upload_photo.dart';
import 'package:food_ninja/presentations/view/on_boarding/on_boarding1.dart';
import 'package:food_ninja/presentations/view/on_boarding/on_boarding2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        OnBoarding1.routeName: (ctx) => const OnBoarding1(),
        OnBoarding2.routeName: (ctx) => const OnBoarding2(),
        Login.routeName: (ctx) => const Login(),
        SignUpProcess.routeName: (ctx) => const SignUpProcess(),
        SignUp.routeName: (ctx) => const SignUp(),
        Payment.routeName: (ctx) => const Payment(),
        UploadPhoto.routeName: (ctx) => const UploadPhoto(),
        Location.routeName: (ctx) => const Location(),
        Confirmation.routeName: (ctx) => const Confirmation(),
      },
      theme: ThemeData(
        fontFamily: 'BentonSans Bold',
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const OnBoarding1();
  }
}
