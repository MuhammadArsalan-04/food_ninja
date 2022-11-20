import 'package:flutter/material.dart';

class NavigationHelper {
  static pushNamedRoute(BuildContext context, dynamic targetClass) {
    Navigator.of(context).pushNamed(targetClass);
  }

  static pushNamedReplacementRoute(BuildContext context, String targetClass) {
    Navigator.of(context).pushReplacementNamed(targetClass);
  }
}
