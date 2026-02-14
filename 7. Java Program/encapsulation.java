// #A customer wants to protect customer balance.task :
// --->create a bank account public class encapsulation {
// --->Balance should be private

// #Methods:
// --->deposit()
// --->withdraw()
// --->getbalance()

// #Condition:- Balance should not be negative 
    
public class encapsulation {
    
    // Step 1: Private variable (Encapsulation)
    private double balance;
    
    // Step 2: Constructor - creates account with starting money
    public encapsulation(double startingBalance) {
        balance = startingBalance;
    }
    
    // Step 3: Deposit method - add money
    public void deposit(double amount) {
        balance = balance + amount;
        System.out.println("Deposited: Rs." + amount);
    }
    
    // Step 4: Withdraw method - take out money
    public void withdraw(double amount) {
        if (balance >= amount) {
            balance = balance - amount;
            System.out.println("Withdrawn: Rs." + amount);
        } else {
            System.out.println("Not enough money!");
        }
    }
    
    // Step 5: Get balance method - check how much money you have
    public double getBalance() {
        return balance;
    }
    
    // Step 6: Test the code
    public static void main(String[] args) {
        encapsulation myAccount = new encapsulation(1000);
        
        System.out.println("Starting balance: Rs." + myAccount.getBalance());
        
        myAccount.deposit(500);
        System.out.println("Balance now: Rs." + myAccount.getBalance());
        
        myAccount.withdraw(300);
        System.out.println("Balance now: Rs." + myAccount.getBalance());
        
        myAccount.withdraw(2000);  // This will fail!
        System.out.println("Final balance: Rs." + myAccount.getBalance());
    }
}
