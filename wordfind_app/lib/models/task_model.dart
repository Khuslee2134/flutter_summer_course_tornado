import 'package:wordfind_app/models/Char_model.dart';

class TaskModel {
  String question;
  String pathImage;
  String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = [];

  TaskModel({required this.pathImage,
    required this.question,
    required this.answer,
    this.arrayButtons = const []});

  setWordFindChar() {
    puzzles = List as List<CharModel>;
    setWordFindChar() {
      this.puzzles = puzzles;
    }
  }

  setIsDone() {
    setIsDone() {
      isDone = true;
    }
  }

  fieldCompleteCorrect() {
    bool complete = puzzles
        .where((puzzle) => puzzle.currentValue == null)
        .isEmpty;
    if (complete) {
    }else{
      isFull = false;
      return complete;
    }
    isFull = true;
    String answeredString = puzzles.map((puzzle) => puzzle.currentValue).join("");
    return answeredString == answer;


  }
  clone(){
    TaskModel(answer: answer, pathImage: pathImage, question: question);
  }
}