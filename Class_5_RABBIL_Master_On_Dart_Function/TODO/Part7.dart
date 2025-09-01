void main(){
  demo();
}

Future demo()async{
  // Delay
  await Future.delayed(Duration(milliseconds: 10000));
  print("Hello World");
}
