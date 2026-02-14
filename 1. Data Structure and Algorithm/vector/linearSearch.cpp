#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> arr = {1, 2, 3, 4, 5, 6, 7, 8, 9}; // Initialize the vector
    int target = 9; // Define the target value

    // Loop through the vector to search for the target
    for (size_t i = 0; i < arr.size(); i++) {
        if (arr[i] == target) { // Check if current element matches target
            cout << "Element Found at index: " << i << endl; // Print index of found element
            break; // Exit loop after finding the element
        }
    }

    // If we exit the loop without finding the element
    if (arr.back() != target) { // Check last element to determine if not found
        cout << "Element not found" << endl; // Print not found message
    }

    return 0; // Indicate successful completion
}
