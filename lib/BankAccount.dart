
class BankAccount{
  late int accountID;
  late double balance;

  BankAccount(this.balance);
  BankAccount.noArg(){
    balance = 0;
  }

  void withdraw(double cash){
    if(cash>balance) return;
    balance-=cash;
  }

  void deposit(double cash){
    balance+=cash;
  }
}