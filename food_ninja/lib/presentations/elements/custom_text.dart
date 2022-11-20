import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  FontWeight? fontWeight;
  double? fontSize;
  Color? textColor;
  bool? softwrap;
  bool? isUderline;
  String? fontFamily;

  CustomText({
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.softwrap,
    this.isUderline,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor ?? Colors.black,
        height: 1.4,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontSize: fontSize ?? 16,
        decoration: isUderline == null
            ? TextDecoration.none
            : isUderline!
                ? TextDecoration.underline
                : TextDecoration.none,
      ),
      softWrap: softwrap ?? false,
    );
  }
}
