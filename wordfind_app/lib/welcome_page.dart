import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Row(
            children: [
              GradientLetter("W"),
              GradientLetter("O"),
              GradientLetter("R"),
              GradientLetter("D"),
            ],
          ),
        ),
      ),
    );
  }
}
