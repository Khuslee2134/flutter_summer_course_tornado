import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/start_page.dart';

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
          children: [
            Padding(padding: EdgeInsets.only(top: 120)),
            Expanded(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientLetter('W'),
                    Padding(padding: EdgeInsets.only(left: 10, top: 120)),
                    GradientLetter('O'),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    GradientLetter('R'),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    GradientLetter('D'),
                    Padding(padding: EdgeInsets.only(left: 10)),
                  ],
                ),
                GradientText(text: 'GAME', size: 31.6),
                Padding(padding: EdgeInsets.only(top: 0)),
              ],
            )),
            Expanded(
                child: Image.asset('assets/iCodeGuy.png',
                    width: 374, height: 374)),
            Expanded(
                child: GradientText(
              text: 'READY',
              size: 25,
            )),
            Padding(padding: EdgeInsets.only(bottom: 22)),
          ],
        ),
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
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StartPage(),
                ));
          },
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
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
        ),
        margin: EdgeInsets.only(bottom: 111, right: 32, left: 33),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
