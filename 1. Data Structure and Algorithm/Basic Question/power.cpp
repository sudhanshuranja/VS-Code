#include<iostream>
#include<math.h>
using namespace std;
int main()
{

int base, power;
cout << "Enter the value of Base: ";
cin >> base;
cout << "Enter the value of Power: ";
cin >> power;
// this "pow" function is included in the #include<math.h> library function.
int Exponent= pow(base,power);
cout << "Power of these nos. :"<< Exponent;


return 0;

}