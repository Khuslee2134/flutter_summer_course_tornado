import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 120),
            ),
            Container(
              child: Expanded(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientLetter('W'),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      GradientLetter('O'),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      GradientLetter('R'),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      GradientLetter('D'),
                      Padding(padding: EdgeInsets.only(left: 10),),
                    ],
                  ),
                  Expanded(
                    child: GradientText(text: 'Game', size: 31.6),
                  ),
                ]),

              ),

            ),
            Expanded(
              child: Image.asset(
                'assets/iCodeGuy.png',
                width: 374,
                height: 374,
              ),
            ),
            Expanded(
              child: GradientText(
                text: 'Ready ?',
                size: 25,
              ),
            ),
          ],
        ),
        margin: EdgeInsets.only(bottom: 193),
      ),
      floatingActionButton: Container(
        width: 310,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              )),
          child: Text(
            'Play',
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 33,
                fontWeight: FontWeight.w700),
          ),
        ),
        margin: EdgeInsets.only(bottom: 111, right: 32, left: 33),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
