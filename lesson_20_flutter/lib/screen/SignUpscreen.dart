import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/components/text_input_field.dart';
import 'package:lesson_20_flutter/resources/auth_methods.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _validatePasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2, child: Container()),
              TextInputField(
                hintText: 'Хэрэглэгчийн И мэйл',
                isPassword: false,
                editingController: _emailController,
                TextInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: 'Хэрэглэгчийн нэр',
                isPassword: false,
                editingController: _usernameController,
                TextInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: 'Нууц үг',
                isPassword: true,
                editingController: _passwordController,
                TextInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: 'Нууц үг давтах',
                isPassword: true,
                editingController: _validatePasswordController,
                TextInputType: TextInputType.text,
              ),
              SizedBox(
                height: 64,
              ),
              InkWell(
                onTap: () => {
                  AuthMethods().signUpUser(
                    email: _emailController.text,
                    password: _passwordController.text,
                    username: _usernameController.text)
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      color: Colors.blue),
                  child: Text(
                    'Бүртгүүлэх',
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Flexible(flex: 2, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
