class Animal {
  int legs = 4;
  int eyes = 2;
  int tail = 1;
  int body = 1;
  String species = 'animal';
  int age = 0;
}
void main(){
  final horse = Animal();
  print(horse);
  print(horse.legs);
  print(horse.species);
  horse.species = 'horse';
  print(horse.species);
  print(horse.eyes);
  print(horse.tail);
  print(horse.body);
  horse.age= 24;
  print(horse.age);
}