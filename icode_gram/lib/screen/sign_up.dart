import 'package:flutter/material.dart';
import 'package:icode_gram/resources/auth_methods.dart';

import '../components/input_field.dart';
import 'Login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'iCodegram',
                style: TextStyle(
                  fontSize: 35.5,
                  fontFamily: 'Lobster',
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 52,
                ),
              ),
              TextInputField(
                hintText: "Утасны дугаар",
                isPassword: false,
                editingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              Padding(padding: EdgeInsets.only(top: 14)),
              TextInputField(
                hintText: "Хэрэглэгчийн нэр",
                isPassword: false,
                editingController: _usernameController,
                textInputType: TextInputType.text,
              ),
              Padding(padding: EdgeInsets.only(top: 14)),
              TextInputField(
                hintText: "Нууц үг",
                isPassword: true,
                editingController: _passwordController,
                textInputType: TextInputType.text,
              ),
              Padding(padding: EdgeInsets.only(top: 14)),
              TextInputField(
                hintText: "Нууц үг давтах",
                isPassword: true,
                editingController: _repasswordController,
                textInputType: TextInputType.text,
              ),
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
                  onPressed: () {
                    AuthMethods().signUpUser(email: _emailController.text, password: _passwordController.text, username: _usernameController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    'Бүртгүүлэх',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 26)),
              Text(
                'Эсвэл',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 30)),
                    Text(
                      'Бүртгэлтэй юу?   ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      width: 91,
                      height: 18,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(
                          'Нэвтрэх',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFE86B02),
                          ),
                        ),
                      ),
                      //   ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      //
                      //   },
                      //   child: Text(
                      //     'Нэвтрэх',
                      //     style: TextStyle(
                      //       backgroundColor: Colors.black,
                      //       fontSize: 15,
                      //       fontWeight: FontWeight.w400,
                      //       color: Color(0xFFE86B02),
                      //     ),
                      //   ),
                      // ),
                    )
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
