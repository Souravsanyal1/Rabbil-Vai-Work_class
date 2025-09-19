
void main() {


}

/*
// Inheritance
class Father{
   String city="Dhaka";
}
class Son extends Father{
    // Auto
}
 */


// Composition
class Father{
  String city="Dhaka";
}
class Son{
  Father father=Father();
  demo(){
    print(father.city);
  }
}



