#include <iostream>
using namespace std;

// Function to print the sum of each row in the array
void printArraySum(int arr[3][3], int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        int sum = 0;
        for (int j = 0; j < cols; j++) {
            sum += arr[i][j]; // Calculate the sum of the current row
        }
        cout << "Sum of row " << i + 1 << ": " << sum << endl; // Print sum with formatting
    }
}

int main() {
    int arr[3][3];
    int rows = 3;
    int cols = 3;

    // Input elements into the array
    cout << "Enter elements for a 3x3 matrix:" << endl;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cin >> arr[i][j];
        }
    }

    // Print the array elements
    cout << "The entered array is:" << endl;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cout << arr[i][j] << " "; // Print elements with space
        }
        cout << endl;
    }

    // Call function to print row-wise sums
    printArraySum(arr, rows, cols);

    return 0; // Indicate successful completion
}
