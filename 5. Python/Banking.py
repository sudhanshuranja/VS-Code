


class BankAccount:
    def __init__(self, account_holder, initial_deposit=0):
        self.account_holder = account_holder
        self.balance = initial_deposit
        print(f"\n✅ Account created for {self.account_holder} with balance ₹{self.balance}")

    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            print(f"💰 ₹{amount} deposited. New balance: ₹{self.balance}")
        else:
            print("❌ Deposit amount must be positive.")

    def withdraw(self, amount):
        if amount > self.balance:
            print("❌ Insufficient funds.")
        elif amount <= 0:
            print("❌ Withdrawal amount must be positive.")
        else:
            self.balance -= amount
            print(f"💸 ₹{amount} withdrawn. New balance: ₹{self.balance}")

    def check_balance(self):
        print(f"📊 Current balance: ₹{self.balance}")

def main():
    print("🏦 Welcome to Bawaal Bank")
    name = input("Enter account holder's name: ")
    try:
        deposit = float(input("Enter initial deposit amount (₹): "))
    except ValueError:
        deposit = 0
        print("Invalid input. Setting initial deposit to ₹0.")

    account = BankAccount(name, deposit)

    while True:
        print("\nChoose an option:")
        print("1. Deposit Money")
        print("2. Withdraw Money")
        print("3. Check Balance")
        print("4. Exit")
        choice = input("Enter your choice (1-4): ")

        if choice == '1':
            amt = float(input("Enter amount to deposit: ₹"))
            account.deposit(amt)
        elif choice == '2':
            amt = float(input("Enter amount to withdraw: ₹"))
            account.withdraw(amt)
        elif choice == '3':
            account.check_balance()
        elif choice == '4':
            print("👋 Thank you for banking with us!")
            break
        else:
            print("❌ Invalid choice. Try again.")

if __name__ == "__main__":
    main()
# This code simulates a simple banking system where users can create an account, deposit, withdraw money, and check their balance.
# It includes error handling for invalid inputs and ensures that the user can only withdraw if sufficient funds are available.  
# The user is prompted to enter their name and initial deposit amount, and the program provides feedback on each transaction.
# The design is user-friendly, with clear prompts and messages for each action taken.
# The program runs in a loop until the user chooses to exit, allowing for multiple transactions in one session.
# The code is structured to be easily understandable, with clear function definitions for each action.
# The use of emojis adds a modern touch to the user interface, making it more engaging.
# The program is designed to be run in a terminal or command line interface, making it accessible to a wide audience.
# The code is written in Python and can be executed in any Python environment.
# The program is a simple banking application that allows users to manage their bank accounts.
# It is a great starting point for anyone looking to learn about programming and banking systems.   