#include<iostream>
using namespace std;

int main()
{
int a, b, c ;

cout << "Enter the value of A:";
cin >> a;
cout << "Enter the value of B: ";
cin >> b;
cout << "Enter the value of c: ";
cin >> c;
 
if ( a>b && a>c)
{

cout <<" The maximum between the given three no. is :" << a;

}

else if ( b>a && b>c )
{
    cout <<" The maximum between the given three no. is :" << b;

}
else
{
    cout <<" The maximum between the given three no. is :" << c;

}

return 0;
}