#include<iostream>
using namespace std;

class Bank
{
  private:
         string holder_name;
         int account_no;
         string account_type;
         float balance;
  public:
         static int transaction;
         double deposit(float a);
         double withdraw(float a);
         Bank(string Name,int Account_no,string Account_type,float Balance);
         void display();
         int CASE();
         static int display_transaction_history();
};

int Bank::transaction=0;


Bank::Bank(string Name,int Acc_no,string Acc_type,float Bal)
{
  holder_name=Name;
  account_no=Acc_no;
  account_type=Acc_type;
  balance=Bal;
}

void Bank::display()
{
    cout<<"Name of account holder : "<<holder_name<<endl;
    cout<<"Account no             : "<<account_no<<endl;
    cout<<"Account type           : "<<account_type<<endl;
    cout<<"Balance                : INR "<<balance<<endl;
}

double Bank::deposit(float a)
{
    balance=balance+a;
    transaction++;
    return balance;
}

double Bank::withdraw(float a)
{   
    if(balance<a)
    {   
        cout<<"Insuffient Fund For Withdrawl\n";
        return balance;
    }
    else 
    {
        balance-=a;
        transaction++;
        return balance;
    }
}

int Bank::CASE()
{
    int t,choice;
    float wid,dep,s;
    while(1)
    {
    cout<<"\n-----------------------------------------------------------\n";
    cout<<"Press 1 to enter into transaction Menu else press 0 to skip :";
    cin>>t;
    if(t==0)
    {
        return 1;
    }
    else
    {
        cout<<"Transaction MENU: \n";
        cout<<"Enter Choice to Proceed With Transactions\n";
        cout<<"1.Withdraw\n";
        cout<<"2.Deposit\n\n";
        cout<<"\nEnter your choice: ";
        cin>>choice;
        switch(choice)
        {
           case 1:
                 cout<<"Amount to be Withdraw  :";
                 cin>>wid;
                 s=withdraw(wid);
                 cout<<"Available balance      : "<<s<<endl;
                 break;
           case 2:
                 cout<<"Amount to be deposited   :";
                 cin>>dep;
                 s=deposit(dep);
                 cout<<" Total Available balance : "<<s<<endl;
                 break;

           default:
                 return 1;

        }
    }
    }
}


int Bank::display_transaction_history()
{
    cout<<"\n\nTOTAL No of BANK Transactions:"<<transaction<<endl;
}
int main()
{
    cout<<"\nTwo Bank Accounts Displayed \n\n\n";
    
    cout<<"\n***Details of Account Holder 1***\n\n";
    
    float initial_amount;
    
    cout<<"Enter the initial Amount in the Account of Costumer 1\n";
    cin>>initial_amount;
    Bank B1("Sagar Singh",3872000,"Savings",initial_amount);
    B1.display();
    B1.CASE();
    B1.display_transaction_history();
    cout<<"\n-----------------------------------------------------------\n";
    
    
    cout<<"\n***Details of Account Holder 2**\n\n";
    cout<<"Enter the initial Amount in the Account of Costumer 2\n";
    cin>>initial_amount;
    Bank B2("Souradeep Ganguly",12000045,"Current Account",initial_amount);
    B2.display();
    B2.CASE();
    B2.display_transaction_history();
    return 0;
}
