import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/configurations/constants.dart';
import 'package:food_ninja/presentations/elements/custom_shader_mask.dart';

class CustomTextField extends StatefulWidget {
  String hintText;
  String? prefixIcon;
  String? suffixIcon;
  double? iconSize;
  bool? isObsecure;
  TextInputType? textInputType;
  BlendMode? blendMode;
  Alignment? begin;
  Alignment? end;

  CustomTextField({
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.iconSize,
    this.isObsecure,
    this.textInputType,
    this.begin,
    this.blendMode,
    this.end,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isObsecure ?? false,
      textAlignVertical: TextAlignVertical.center,
      cursorColor: Constatnts.kPrimaryColor,
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Constatnts.kPrimaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
        suffixIcon: widget.suffixIcon == null
            ? null
            : widget.isObsecure!
                ? IconButton(
                    icon: Image(
                      image: AssetImage(widget.suffixIcon!),
                    ),
                    onPressed: changeObsecure,
                  )
                : IconButton(
                    icon: const Icon(Icons.visibility_off),
                    onPressed: changeObsecure,
                  ),
        prefixIcon: widget.prefixIcon == null
            ? null
            : CustomShaderMask(
                blendMode: widget.blendMode,
                begin: widget.begin,
                end: widget.end,
                child: ImageIcon(
                  AssetImage(widget.prefixIcon!),
                  size: widget.iconSize,
                  color: Constatnts.kPrimaryColor,
                ),
              ),
      ),
    );
  }

  void changeObsecure() {
    setState(() {
      if (widget.isObsecure == true) {
        widget.isObsecure = false;
      } else {
        widget.isObsecure = true;
      }
    });
  }
}
