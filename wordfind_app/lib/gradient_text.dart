import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double size;
  final String fontfamily;
  const GradientText({super.key, required this.text, required this.size,required this.fontfamily});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontFamily: fontfamily,
        foreground: Paint()
          ..shader = LinearGradient(
            colors: [
              Color(0xFFE86B02),
              Color(0xFFFA9541),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0661, 0.761],
            transform: GradientRotation(88.82),
          ).createShader(const Rect.fromLTWH(0.0, 0.0, 200, 70)),
      ),
    );
  }
}
