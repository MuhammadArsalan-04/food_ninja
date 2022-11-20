import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/elements/custom_gradient.dart';

import '../Configurations/constants.dart';

class CustomShaderMask extends StatelessWidget {
  Widget child;
  BlendMode? blendMode;
  Alignment? begin;
  Alignment? end;

  CustomShaderMask({
    required this.child,
    this.blendMode,
    this.begin,
    this.end,
  });
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: blendMode ?? BlendMode.srcIn,
      shaderCallback: (bounds) {
        final Gradient gradient = CustomGradient.linearGradient(
            beginAlignment: begin, endAlignment: end);
        return gradient
            .createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
      },
      child: child,
    );
  }
}
