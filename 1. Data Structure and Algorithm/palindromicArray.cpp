
#include<iostream>
using namespace std;

int main()
{
    int arr[] = { 121,323,1551,121, 12321, 1234321 };

    for (int i = 0 ; i < sizeof(arr); i++)
    {
        int num = arr[i];
        int reversed = 0, original = num;

        while (num > 0)
        {
            reversed = reversed * 10 + num % 10;
            num /= 10;
        }

        if (original == reversed)
            cout << original << " is a palindromic number." << endl;
        else
            cout << original << " is not a palindromic number." << endl;
    }
}