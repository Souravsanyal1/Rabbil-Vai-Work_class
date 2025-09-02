import "BankAccount.dart";
main(){
  var obj=BankAccount();
  obj.deposit(500);
  obj.withdraw(200);
  print(obj.balanceCheck());
}

