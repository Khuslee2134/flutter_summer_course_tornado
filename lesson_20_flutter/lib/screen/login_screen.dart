import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/components/text_input_field.dart';
import 'package:lesson_20_flutter/resources/auth_methods.dart';
import 'Home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLaoding = false;

  void loginUser() async {
    setState(() {
      _isLaoding = true;
    });
    String result = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);
    if (result == 'success') {
      setState(() {
        _isLaoding = false;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      });
      print('Logged in');
    } else {
      print('Not logged in');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2, child: Container()),
              Text('iCodegram'),
              SizedBox(
                height: 64,
              ),
              TextInputField(
                hintText: 'Enter your email',
                isPassword: false,
                editingController: _emailController,
                TextInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 24,
              ),
              TextInputField(
                hintText: 'Enter your password',
                isPassword: true,
                editingController: _passwordController,
                TextInputType: TextInputType.text,
              ),
              SizedBox(
                height: 64,
              ),
              InkWell(
                onTap: loginUser,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    color: Colors.blue,
                  ),
                  child: _isLaoding
                      ? Center(
                          child: CircularProgressIndicator(color: Colors.white))
                      : Text(
                          'Нэвтрэх',
                        ),
                ),
              ),
              Flexible(flex: 2, child: Container())
            ],
          ),
        ),
      ),
    );
  }
}
