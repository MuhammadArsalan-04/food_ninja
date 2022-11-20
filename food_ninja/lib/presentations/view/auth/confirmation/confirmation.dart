import 'package:flutter/material.dart';

import 'layout/body.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({Key? key}) : super(key: key);

  static const routeName = 'confirmation';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ConfrimationBody(),
    );
  }
}
