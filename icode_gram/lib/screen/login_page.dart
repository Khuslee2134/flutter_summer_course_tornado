import 'package:flutter/material.dart';
import 'package:icode_gram/components/input_field.dart';
import 'package:icode_gram/resources/auth_methods.dart';
import 'package:icode_gram/screen/sign_up.dart';
import '../models/User_.dart';
import 'home_screen.dart';

User newUser = User(userName: "Guest", password: ' ');

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLaoding = false;
  void loginUser()async{
    setState(() {
      _isLaoding = true;
    });
    String result = await AuthMethods().loginUser(email: _emailController.text, password: _passwordController.text);
    if(result == "success"){
      setState(() {
        _isLaoding = false;
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      });
      print('Logged in');
    }else{
      print('Not logged in');
    }
  }
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
              )),
              TextInputField(
                  hintText: "Нэвтрэх нэр",
                  isPassword: false,
                  editingController: _emailController,
                  textInputType: TextInputType.emailAddress),
              Padding(padding: EdgeInsets.only(top: 14)),
              TextInputField(
                  hintText: "Нууц үг",
                  isPassword: true,
                  editingController: _passwordController,
                  textInputType: TextInputType.text),
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
                    loginUser();
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => (newUser)));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: _isLaoding ? Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ) : Text(
                    'Нэвтрэх',
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
                      'Шинэ хэрэглэгч үү?   ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 18,
                      child: InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp())),
                        child: Text(
                          'Бүртгүүлэх',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFE86B02),
                          ),
                        ),
                      ),
                      //  ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                      //   },
                      //   child: Text(
                      //     'Бүртгүүлэх',
                      //     style: TextStyle(
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
