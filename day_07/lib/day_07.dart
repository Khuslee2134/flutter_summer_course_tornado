void main(){
  add(2, 6);
  a(6, 4, 5);
  findMinimum(5, 8);
 print( helloPersonAndPet('Tommy', 'Jerry'));
 b(7, 5);
 print(c(4));
 print(d(2, 2));
}
// exercise 01
void add(int x, int y){
  print(x + y);
}
// exercise 02
void a(int q, int w, int e){
  print((q + w + e) / 3);
}
// exercise 03
void findMinimum(int r, int t){
  if(r > t){
    print(r);
  }else{
    print(t);
  }
}
// exercise 04
String helloPersonAndPet(String person, String pet){
  return 'Hello $person and your furry friend $pet';
}
// exercise 05
void b(int y, int u){
  print(y * u);
}
// exercise 06
double c(int radius){
  return 3.14 * 2 * radius;
}
// exercise 07

int d(in yt i int o){
  for(int o; o > 0; o--){
    return i * i;
}
}