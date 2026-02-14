// Bank Account
// create class bank account with accountno, name, and balance
// Implements methods for deposits()and withdraw()

class Account{

 String name ;
 long accountno;
 long balance;
 int deposit;
 int Withdrawl;
 
 void display()
 {
    System.out.println("Tell me your name : " +name);
    System.out.println("What is your account number? " +accountno);
    System.out.print("Current Balance is "+balance);
    System.out.println("Depost balance is "+deposit);
    System.out.println("Withdrawl ammount is "+Withdrawl);
    System.out.println("After deposit balance is  "+(deposit + balance));
    System.out.println("After Withdrawl balance is "+((deposit + balance) - Withdrawl));
 }
}

class Banking{
    public static void main(String[] s){
    Account a= new Account();
    a.name= "vasudev";
    a.accountno = 3050000;
    a.balance = 20000;
    a.deposit = 5000;
    a.Withdrawl= 500;

    a.display();
}}