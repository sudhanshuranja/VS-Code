#include<iostream>
using namespace std;

int main()
{
int lastCountingNumber;
cout<<" Last counting number from where you want to stop the counting : ";
cin>> lastCountingNumber;

for (int i = 1; i <= lastCountingNumber; i+=1)
{
    cout<< " Here is the counting that you want : "<< i << endl;
}

    return 0;
}