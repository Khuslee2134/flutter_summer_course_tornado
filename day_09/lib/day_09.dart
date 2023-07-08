import 'dart:math';
class Sprite {
  Sprite(String name) {
    this.name = name;
  }

  String name = 'Sprite';
  int x = 0;
  int y = 0;
  bool isShow = true;
  int size = 100;
  int direction = 90;

  void move(int x) {
    this.x = x;
  }

  String say() {
    return this.name;
  }

  void changeYby(int y) {
    this.y = y;
  }

  void changeSizeBy(int size) {
    this.size = size;
  }

  void sayText5Times(String text) {
    for (int i = 0; i < 5; i++) {
      print(text);
    }
  }

  void changeDirectionby(int direction) {
    this.direction = direction;
  }

  String getDirection() {
    if (this.direction < 90 || this.direction > 0) {
      return 'South east';
    } else if (this.direction > 90 || this.direction < 180) {
      return 'South west';
    } else if (this.direction > 180 || this.direction < 270){
      return 'North west';
    }else if(this.direction > 270 || this.direction < 360){
      return'North east';
    }else{
      return '';
    }
  }
  void getRandomDirection(){
    final random = Random ();
    int randomNumber = random.nextInt(100);
    this.direction = randomNumber;
  }
}
void main() {
  print('Day_09 - Tornado');
  final Button = Sprite('Button');
  final Whitch = Sprite('Whitch');
  final Guitar = Sprite('Guitar');
  final Ball = Sprite('Ball');
  final random = Random ();
  print(Button.x);
  Button.move(10);
  print(Button.x);

  print(Button.y);
  Button.changeYby(30);
  print(Button.y);
  Whitch.changeYby(-40);
  print(Whitch.y);
  print(Whitch.x);
  Whitch.move(-30);
  print(Whitch.x);
  print(Guitar.x);
  Guitar.move(100);
  print(Guitar.x);
  Guitar.move(-200);
  print(Guitar.x);
  print(Guitar.y);
  Guitar.changeYby(30);
  print(Guitar.y);
  Guitar.changeYby(-20);
  print(Guitar.y);
  print(Ball.y);
  Ball.changeYby(200);
  print(Ball.y);
  Ball.changeYby(-300);
  print(Ball.y);

  print(Button.say());
  print(Whitch.say());
  print(Guitar.say());
  print(Ball.say());

  //4
  Button.changeSizeBy(50);
  print(Button.size);
  Button.sayText5Times('Hi');
  Button.changeDirectionby(30);
  print(Button.direction);
  print(Button.getDirection());
  Button.getRandomDirection();
  print(Button)
}


