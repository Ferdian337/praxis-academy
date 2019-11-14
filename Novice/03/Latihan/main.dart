import 'dart:io';

class Deposit extends ATMMachine{
    static double deposit;
     void setDeposit(double d){
        deposit = d;
    }
     static double getDeposit(){
        return deposit;
    }
}

class Withdraw extends ATMMachine{
    static double withdraw = 0;   
     void setWithdraw(double w){
        withdraw = w;
    }
     static double getWithdraw(){
        return withdraw;
    }
}

class BalanceInquiry extends ATMMachine
{
    static double balance = 0;
     void setBalance(double b)
    {
        balance = b;
    }
     static double getBalance()
    {
        return balance;
    }   
}

class ATMMachine{   
    static void checkBalance()
    {
        print("\tYour current balance is " + BalanceInquiry.getBalance().toString());
    }
   
    static void withdrawMoney()
    {
        if(BalanceInquiry.balance==0)
        {
            print("\tYour current balance is zero.");
            print("\tYou cannot withdraw!");
            print("\tYou need to deposit money first.");
        }
        else if(BalanceInquiry.balance<=500)
        {
            print("\tYou do not have sufficient money to withdraw");
            print("\tChecked your balance to see your money in the bank.");
        }
        else if(Withdraw.withdraw > BalanceInquiry.balance)
        {
            print("\tThe amount you withdraw is greater than to your balance");
            print("\tPlease check the amount you entered.");
        }
        else
        {
            BalanceInquiry.balance = BalanceInquiry.balance - Withdraw.withdraw;
            print("\n\tYou withdraw the amount of Php " + Withdraw.withdraw.toString());
        }
    }
                   
    static void depositMoney()
    {
        print("\tYou deposited the amount of " + Deposit.getDeposit().toString());
    }
}

void main(){
        int select = 0;
        int choice = 0;
       
        print("====================================================");
        print("\tWelcome to this simple ATM machine");
        print("====================================================");
        print("\n");
       
        do
        {try
                {
            do {
               
                    print("\tPlease select ATM Transactions");
                    print("\tPress [1] Deposit");
                    print("\tPress [2] Withdraw");
                    print("\tPress [3] Balance Inquiry");
                    print("\tPress [4] Exit");
               
                    print("\n\tWhat would you like to do? ");
                    select = int.parse(stdin.readLineSync());
   
                        if(select>4)
                        {
                            print("\n\tPlease select correct transaction.");
                        }
                        else
                        {
                        switch (select)
                        {
                            case 1:
                                print("\n\tEnter the amount of money to deposit: ");
                                Deposit.deposit = double.parse(stdin.readLineSync());
                                BalanceInquiry.balance = Deposit.deposit + BalanceInquiry.balance;
                                ATMMachine.depositMoney();
                                break;
                               
                            case 2:
                               
                                print("\n\tTo withdraw, make sure that you have sufficient balance in your account.");
                                print("\n");
                                print("\tEnter amount of money to withdraw: ");
                                Withdraw.withdraw = double.parse(stdin.readLineSync());
                                ATMMachine.withdrawMoney();
                                break;
                               
                            case 3:
                                ATMMachine.checkBalance();
                                break;
                           
                            default:
                                print("\n\tTransaction exited.");
                                break;
                               
                        }
                    }               
                          
            }while(select>4);
           
            do {
                try
                {
                    print("\n\tWould you like to try another transaction?");
                    print("\n\tPress [1] Yes \n\tPress [2] No");
                    print("\tEnter choice: ");
                    choice = int.parse(stdin.readLineSync());
               
                        if(choice>2)
                        {
                            print("\n\tPlease select correct choice.");
                        }
                    }
                   
                    catch(e)
                    {
                        print("\tError Input! Please enter a number only.");
                        print("\tEnter yout choice:");
                        choice = int.parse(stdin.readLineSync());
                    }
            } while(choice>2);
        }
        catch(e)
                {
                    print("\tError Input! Please enter a number only.");
                    print("\tEnter yout choice:");
                    select = int.parse(stdin.readLineSync());
                }
               
        }while(choice<=1);
       
        print("\n\tThank you for using this simple ATM Machine.");
    }
