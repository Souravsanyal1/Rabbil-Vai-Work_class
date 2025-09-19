
void main() {


}

// Parent
abstract class Bird{
  void eat();
}

// Child
abstract class FlyingBird extends Bird{
  void fly();
}


class crow extends FlyingBird{
  @override
  void eat() {
    print("Eating");
  }

  @override
  void fly() {
    print("Flying");
  }

}

class sparrow extends FlyingBird{
  @override
  void eat() {
  }

  @override
  void fly() {
  }
}

class Parrot extends FlyingBird{
  @override
  void eat() {
  }

  @override
  void fly() {
  }

}
