class Bank:
    def __init__(self, name, account_number, initial_balance, interest_rate, contact_number, address):
        self.name = name
        self.account_number = account_number
        self.balance = initial_balance
        self.interest_rate = interest_rate
        self.contact_number = contact_number
        self.address = address

    def deposit(self, amount):
        self.balance += amount
        print("Deposit successful. New balance:", self.balance)

    def withdraw(self, amount):
        if self.balance >= amount:
            self.balance -= amount
            print("Withdrawal successful. New balance:", self.balance)
        else:
            print("Insufficient funds.")

    def compute_interest(self):
        interest = (self.balance * self.interest_rate) / 100
        self.balance += interest  # Add interest to the balance
        print("Interest computed:", interest)

    def display_balance(self):
        print("Current balance:", self.balance)


def create_account():
    name = input("Enter customer name: ")
    account_number = input("Enter account number: ")
    initial_balance = float(input("Enter initial balance: "))
    interest_rate = float(input("Enter rate of interest: "))
    contact_number = input("Enter contact number: ")
    address = input("Enter address: ")
    return Bank(name, account_number, initial_balance, interest_rate, contact_number, address)


def main():
    bank = None
    while True:
        print("\nMenu:")
        print("1. Create Account")
        print("2. Deposit")
        print("3. Withdraw")
        print("4. Compute Interest")
        print("5. Display Balance")
        print("6. Exit")

        choice = input("Enter your choice: ")

        if choice == '1':
            bank = create_account()
        elif choice == '2':
            try:
                amount = float(input("Enter amount to deposit: "))
                bank.deposit(amount)
            except ValueError:
                print("Invalid input. Please enter a valid number.")
        elif choice == '3':
            try:
                amount = float(input("Enter amount to withdraw: "))
                bank.withdraw(amount)
            except ValueError:
                print("Invalid input. Please enter a valid number.")
        elif choice == '4':
            bank.compute_interest()
        elif choice == '5':
            bank.display_balance()
        elif choice == '6':
            print("Exiting program.")
            break
        else:
            print("Invalid choice. Please try again.")


if __name__ == "__main__":
    main()
