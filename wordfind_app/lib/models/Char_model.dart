import 'package:flutter/material.dart';
import 'package:wordfind_app/models/Char_model.dart';

class CharModel {
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  bool hintShow;

  CharModel(
      {this.hintShow = false,
       this.correctValue,
       this.currentValue,
       this.currentIndex});

  getCurrentValue() {
    if (correctValue != null) {
      return currentValue;
    } else if (hintShow) {
      return correctValue;
    }
  }

  clearValue() {
    currentIndex = null;
    currentValue = null;
  }
}
