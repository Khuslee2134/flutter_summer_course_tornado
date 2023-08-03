class CharModel{
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  late bool hintShow;
}
CharModel.constparameterized({this.hintShow=false, required this.correctValue, this.currentValue})
