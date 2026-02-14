/*Name Sudhanshu Ranjan
Reg. No. 12313589
Roll No. 65

Given an integer array , find the contiguous sub array within an array (containing at least one array) which has the largest product.
Write a program in C/C++ to display largest product .
example: Input{2,3,-2,4,5,6,-4}
output :120
Explanation : the subarray [4,6] has the largest product 120
*/

#include<iostream>
using namespace std;

int main() {
int n;
 cout << "Enter the number of array elements :";
 cin >> n;

    int arr[n];
    cout << "Enter the elements of the array: ";
    for (int i = 0; i < n; i++) {
        cin >> arr[i];
}
  int maxProduct = arr[0];
for (int i = 0; i < n; i++)
    {
    int currentProduct = 1;
        for (int j = i; j < n; j++)
        {
            currentProduct *= arr[j];
            if (currentProduct > maxProduct)
             {
                maxProduct = currentProduct;
            }
        }
    }

cout << "The largest product subarray is: " << maxProduct << endl;

    return 0;
}
