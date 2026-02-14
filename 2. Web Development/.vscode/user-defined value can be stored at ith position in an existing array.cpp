#include <iostream>
using namespace std;

int main() {
    int arr[10] = {0}; // Initialize an array of size 10 with default values (0)
    int position, value;

    // Ask the user for the position and value
    cout << "Enter the position (1 to 10): ";
    cin >> position;

    // Check if the position is valid
    if (position < 1 || position > 10) {
        cout << "Invalid position! Please enter a position between 1 and 10." << endl;
        return 0;
    }

    cout << "Enter the value to store: ";
    cin >> value;

    // Store the value at the (position - 1) index in the array
    arr[position - 1] = value;

    // Output the updated array
    cout << "Updated array: ";
    for (int i = 0; i < 10; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;

    return 0;
}
