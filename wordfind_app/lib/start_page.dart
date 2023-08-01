import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_field.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: 20),
            icon: Image.asset('assets/arrow_back.png'),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50,
          child: Padding(
            padding: EdgeInsets.only(top: 7.8),
            child: Image.asset('assets/game_logo.png'),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/back2.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [Padding(
                padding: EdgeInsets.only(top: 50)
            ),
              Image.asset('assets/iCodeGuyHead.png'),
              Padding(padding: EdgeInsets.only(top: 20)),
              GradientText(text: 'Player name', size: 20),
              Padding(padding: EdgeInsets.only(top: 20)),
              InputField(),
            ],
          ),
        ),
      ),
      floatingActionButton: Startbutton('Start'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
class Startbutton extends StatefulWidget {
  final String text;
  const Startbutton(this.text,{super.key});

  @override
  State<Startbutton> createState() => _StartbuttonState();
}

class _StartbuttonState extends State<Startbutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors:[Color(0xFFE86B02),Color(0xFFFA9541)],
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
          child: Text(
            'Start',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          )
      )
    );
  }
}

