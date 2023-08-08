import 'package:flutter/material.dart';

class GradientLetter extends StatelessWidget {
  final String letter;
  final double radius;
  final double radius1;
  final double height;
  final double fontSize;

  const GradientLetter(this.letter, this.radius, this.radius1, this.height, this.fontSize,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: const Color(0xFFFF9002),
      ),
      child: FractionallySizedBox(
        widthFactor: 2 / 3,
        heightFactor: 2 / 3,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius1),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(255, 144, 2, 0),
                  Color(0xFFE48000),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [-0.025, 1.6875],
                transform: GradientRotation(180),
              ),
            ),
            child: Center(
              child: Text(
                letter,
                style: TextStyle(
                  fontSize: fontSize,
                  height: 52/height,
                  color: Colors.white,
                ),
              ),
            )),
      ),
    );
  }
}
