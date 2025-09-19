
void main() {


}

abstract class Shape{
  double area();
}

// Open
class circle implements Shape{
  @override
  double area(){
    int r=10;
    return 3.14*r*r;
  }
}

// Open
class rectangle implements Shape{
  @override
  double area(){
    double x=10;
    double y=10;
    return x*y;
  }
}

/*
// Open
// Close
class square implements Shape{
  @override
  double area(){
    double x=10;
    return x*x;
  }
}
 */