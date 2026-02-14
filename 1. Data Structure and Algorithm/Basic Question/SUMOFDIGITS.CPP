#include<iostream>
using namespace std;

int digitsSum(int number){

    int sum = 0;
    while (number > 0)
    {
        sum = sum + number % 10 ;
        number = number /10 ;

    }
    return sum;
    
}

int main()
{

int number;
cin>> number;

int sumOfDigits= digitsSum( number);

cout << " Sum is "<< sumOfDigits << endl;

return 0;

}