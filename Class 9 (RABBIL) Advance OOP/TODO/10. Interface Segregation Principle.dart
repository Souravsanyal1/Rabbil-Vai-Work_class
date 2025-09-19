
void main() {


}



// Let's Create Interface Class

/*

// All Interface method in one
abstract class ComputerBusiness{
    void SaleLaptop();
    void SaleDekstop();
    void Repair();
    void SaleAccessories();
}

class MyBusiness implements ComputerBusiness{
  @override
  void Repair() {
  }

  @override
  void SaleAccessories() {
  }

  @override
  void SaleDekstop() {
  }

  @override
  void SaleLaptop() {
  }

}
 */


abstract class ComputerShowRoomBusiness{
  void SaleLaptop();
  void SaleDekstop();
}

abstract class ComputerRepairBusiness{
  void Repair();
  void SaleAccessories();
}


class MyBusiness implements ComputerRepairBusiness{
  @override
  void Repair() {
    // TODO: implement Repair
  }

  @override
  void SaleAccessories() {
    // TODO: implement SaleAccessories
  }

}