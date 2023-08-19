import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:icode_gram/components/custom_scroll_view.dart';
import 'package:icode_gram/home_screen.dart';
import 'package:icode_gram/screen/login_page.dart';
import 'package:icode_gram/screen/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    title: "ICodeGram",
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
      textTheme: Typography().white.apply(fontFamily: "Rubik"),
    ),
    home: HomeScreen(),
  ));
}
