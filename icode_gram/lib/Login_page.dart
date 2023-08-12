import 'package:flutter/material.dart';
import 'package:icode_gram/input_field.dart';
import 'User_.dart';

User newUser = User(userName: "Guest", password: ' ');

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 256),
                ),
                Text(
                  'iCodegram',
                  style: TextStyle(
                    fontSize: 35.5,
                    fontFamily: 'Lobster',
                    color: Colors.white,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  top: 70,
                )),
                InputField(onSubmitted: _createUser, hintText: "Нэвтрэх нэр"),
                Padding(padding: EdgeInsets.only(top: 14)),
                InputField(onSubmitted: _createUser, hintText: "Нууц үг"),
                Container(
                  width: 343,
                  height: 45,
                  margin: EdgeInsets.only(top: 48),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      'Нэвтрэх',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 26)),
                Text(
                  'Эсвэл',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 30)),
                  Text(
                    'Шинэ хэрэглэгч үү?   ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                      Text(
                          'Бүртгүүлэх',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFE86B02),
                        ),
                      )
                ]),
              ],
        ),
      ),
    );
  }

  void _createUser(String userName) {
    setState(() {
      newUser.userName = userName;
    });
  }
}
