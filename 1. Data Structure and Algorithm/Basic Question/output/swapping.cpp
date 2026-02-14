#include<iostream>
using namespace std;

int main(){

    int a ,b;
    cout << "Enter the value of A:";
cin >> a;
cout << "Enter the value of B: ";
cin >> b;

cout<< " Before Swapping : " << "a =" <<a<< endl<<"b = "<< b << endl;
 
 a=a+b;
 b=a-b;
 a=a-b;

 cout <<"After Swapping :" << "a =" <<a<< endl<<"b = "<< b << endl;
return 0;
}