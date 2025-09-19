
void main() {

  var dk=Dhaka();
  var bd=Bangladesh(dk);

}


class Bangladesh{

  Bangladesh(Dhaka dk){
    print(dk.population);
  }

}

class Dhaka{

  var population="4Cro";

}

