import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icode_gram/screen/login_page.dart';
import 'package:icode_gram/screen/sign_up.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: "ICodeGram",
    theme: ThemeData(
      fontFamily: "Rubik",
    ),
    home: SignUp(),
  ));
}