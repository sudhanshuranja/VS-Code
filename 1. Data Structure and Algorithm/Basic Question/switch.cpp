#include<iostream>
using namespace std;

int main()
{

int day;
 
 cout << "Enter the day number ="<<endl;
 cin >> day;

switch(day)
{
    case 1:
    cout << " Monday is the present day.";
    break;

       case 2:
    cout << " Tuesday is the present day.";
    break;

       case 3:
    cout << " Wednesday is the present day.";
    break;

       case 4:
    cout << " Thursday is the present day.";
    break;

       case 5:
    cout << " Friday is the present day.";
    break;

       case 6:
    cout << " Saturday is the present day.";
    break;

   case 7:
    cout << "Sunday is the present day.";
    break;
    
       case 8:
    default:cout << " Invalid Day number";
    
    
    }

}