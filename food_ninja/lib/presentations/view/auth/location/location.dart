import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/view/auth/location/layout/body.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  static const routeName = 'location';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.all(12.0),
      child: LocationBody(),
    ));
  }
}
