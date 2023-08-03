import 'package:flutter/material.dart';
import 'package:wordfind_app/Task_page.dart';
import 'package:wordfind_app/welcome_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Word Find Game",
    theme: ThemeData(
      fontFamily: "Ribeye",

    ),
    home: WelcomePage(),
  ));
}

