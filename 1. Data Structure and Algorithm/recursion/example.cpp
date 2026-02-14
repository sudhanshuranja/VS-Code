#include <iostream>
#include <vector>
using namespace std;

//Implementation of Each Concept Separately
// Check Occurrence
// cpp
// Copy code
// bool checkOccurrence(string& str, char key, int i) {
//     if (i >= str.length()) return false;
//     if (str[i] == key) return true;
//     return checkOccurrence(str, key, i + 1);
// }
// Index of First Occurrence
// cpp
// Copy code
// int firstOccurrence(string& str, char key, int i) {
//     if (i >= str.length()) return -1;
//     if (str[i] == key) return i;
//     return firstOccurrence(str, key, i + 1);
// }
// Find All Occurrences
// cpp
// Copy code
// void findAllOccurrences(string& str, char key, int i, vector<int>& ans) {
//     if (i >= str.length()) return;
//     if (str[i] == key) ans.push_back(i);
//     findAllOccurrences(str, key, i + 1, ans);
// }
// Reverse Traversal
// cpp
// Copy code
// void reverseTraversal(string& str, int i) {
//     if (i < 0) return;
//     cout << str[i] << " ";
//     reverseTraversal(str, i - 1);
// }

// Function to find all occurrences of 'key' in the string 'str' recursively
void checkKey(string& str, int i, int n, char& key, vector<int>& ans) {
    // Base case: If we have checked all characters
    if (i >= n) {
        // No more characters to check
        return;
    }

    // Check if the current character matches the key
    if (str[i] == key) {
        // If match is found, store the index in the vector
        ans.push_back(i);
    }

    // Recursive call to check the next character
    checkKey(str, i + 1, n, key, ans);
}

int main() {
    string str = "lovebabbar"; // The string to search
    int n = str.length();      // Length of the string
    char key = 'b';            // The character we are looking for
    int i = 0;                 // Starting index
    vector<int> ans;           // Vector to store indices of occurrences

    // Call the recursive function
    checkKey(str, i, n, key, ans);

    // Output the result
    cout << "Printing ans" << endl;
    for (auto val : ans) {
        cout << val << " ";    // Print each index found
    }
    cout << endl;

    return 0;
}
