import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/view/auth/payment/layout/body.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  static const routeName = 'payment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(12.0),
        child: PaymentBody(),
      ),
    );
  }
}
