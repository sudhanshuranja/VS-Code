#include<iostream>
using namespace std;

int main()
{
    int count=0;
  int a;
    cout << "Give me the number which you want to count it:";
    cin>> a;
    if (a==0)
    {
        count=1;
    
    }
    else{
        while (a!=0)
        {
         
           a= a/10;
           count ++;

        }
    }
      
    cout << count;
}

