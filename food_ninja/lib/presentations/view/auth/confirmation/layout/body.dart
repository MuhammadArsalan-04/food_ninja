import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/configurations/resources.dart';

class ConfrimationBody extends StatelessWidget {
  const ConfrimationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Image(
          image: AssetImage(Resources.kConfirm),
        ),
      ],
    );
  }
}
