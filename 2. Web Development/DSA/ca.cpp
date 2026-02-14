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


        for (int i = 0; i < n; i++) {
        int currentProduct = 1; // Initialize product of the current subarray
        for (int j = i; j < n; j++) {
            currentProduct *= arr[j]; // Multiply elements of the subarray
            if (currentProduct > maxProduct) {
                maxProduct = currentProduct; // Update max product if a larger one is found
            }
        }
    }

    // Display the largest product
    cout << "The largest product subarray is: " << maxProduct << endl;

    return 0;
}
