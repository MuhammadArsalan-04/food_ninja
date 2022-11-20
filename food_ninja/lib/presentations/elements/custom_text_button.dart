import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/elements/custom_shader_mask.dart';

class CustomTextButton extends StatelessWidget {
  Function onPressed;
  String text;
  BlendMode? blendMode;
  double? fontSize;
  bool isUnderline;
  FontWeight? fontWeight;
  String? fontFamily;

  CustomTextButton({
    required this.onPressed,
    required this.text,
    this.blendMode,
    this.fontSize,
    this.isUnderline = false,
    this.fontFamily,
    this.fontWeight,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => onPressed(),
        child: CustomShaderMask(
          blendMode: blendMode ?? BlendMode.srcIn,
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize ?? 12,
              fontWeight: fontWeight ?? FontWeight.w400,
              //fontFamily: fontFamily ?? 'BentonSans Bold',
              decoration:
                  isUnderline ? TextDecoration.underline : TextDecoration.none,
            ),
          ),
        ));
  }
}
