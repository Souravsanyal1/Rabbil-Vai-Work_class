class BankAccount{

  double _balance=0;

  // Deposit
  deposit(double amount){
    if(amount<=0){
      print("Amount can't deposit");
    }
    else{
      _balance +=amount;
    }
  }


  // Withdraw
  withdraw(double amount){
    if(amount>_balance){
      print("Insufficient balance");
    }
    else{
      _balance -=amount;
    }
  }

  balanceCheck(){
    return _balance;
  }

}

