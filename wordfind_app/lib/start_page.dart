import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_field.dart';
import 'package:wordfind_app/Task_page.dart';
import 'package:wordfind_app/models/User_model.dart';

User newUser = User(userName: "Guest", score: 0);

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
            padding: EdgeInsets.only(left: 20),
            icon: Image.asset('assets/arrow_back.png'),
            onPressed: () {
              Navigator.pop(context);
              newUser = User(userName: 'Guest', score: 0);
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
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Image.asset('assets/iCodeGuyHead.png'),
              Padding(padding: EdgeInsets.only(top: 20)),
              GradientText(text: 'Player name', size: 20, fontfamily: 'Ribeye',),
              Padding(padding: EdgeInsets.only(top: 20)),
              InputField(
                onSubmitted: _createUser,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Startbutton(newUser),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _createUser(String userName) {
    setState(() {
      newUser.userName = userName;
    });
  }
}

class Startbutton extends StatefulWidget {
  Startbutton(User newUser, {super.key});

  @override
  State<Startbutton> createState() => _StartbuttonState();
}

class _StartbuttonState extends State<Startbutton> {
  @override
  Widget build(BuildContext context) {
    if (newUser.userName == "Guest") {
      return Container();
    } else {
      return Container(
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TaskPage(newUser)));
          },
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
          ),
        ),
      );
    }
  }
}
