
void main() {
  var OBJ=User("Jhon");
  print(OBJ.name);
}

class User{
  String name;
  User._(this.name);
  factory User(String name){
    return  User._(name);
  }
}

