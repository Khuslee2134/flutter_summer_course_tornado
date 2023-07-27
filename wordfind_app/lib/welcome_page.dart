import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImagemage(),
        ),

      ),
    );
  }
}
