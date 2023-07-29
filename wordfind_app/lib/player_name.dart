import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';

class PlayerName extends StatelessWidget {
  const PlayerName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back1.png"),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 37),
            ),
            Expanded(child: child)
          ],
        ),
      ),
    ),
  }
}
