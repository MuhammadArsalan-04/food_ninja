import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/configurations/constants.dart';
import 'package:food_ninja/presentations/elements/custom_shader_mask.dart';

class ChecksView extends StatefulWidget {
  String text;

  ChecksView({required this.text});

  @override
  State<ChecksView> createState() => _ChecksViewState();
}

class _ChecksViewState extends State<ChecksView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 26,
          width: 26,
          decoration: isChecked
              ? BoxDecoration(
                  gradient: const LinearGradient(colors: Constatnts.kGradientColor),
                  borderRadius: BorderRadius.circular(50))
              : BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Constatnts.kPrimaryColor2,
                  )),
          child: Checkbox(
            value: isChecked,
            onChanged: (value) => setState(() {
              isChecked = value!;
            }),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            checkColor: Colors.white,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            fillColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          widget.text,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
