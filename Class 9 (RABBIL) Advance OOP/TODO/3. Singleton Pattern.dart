
void main() {
  var obj1=Database();
  var obj2=Database();

  print(obj1==obj2);

}


class Database{
  //  variable
  static final Database connection=Database.MyDatabase();

  // private constructor
  Database.MyDatabase();

  // factory constructor
  factory Database(){
    return connection;
  }
}
