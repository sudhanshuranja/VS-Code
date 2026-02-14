#include <iostream>
using namespace std;

int reverse(int n) {
    int rev = 0; // Initialize the reversed number
    while (n > 0) { // Continue until all digits are processed
        rev = (rev * 10) + (n % 10); // Add the last digit of n to rev
        n = n / 10; // Remove the last digit from n
    }
    return rev; // Return the reversed number
}

int main() {
    int n;
    cout << "Enter a number: ";
    cin >> n; // Input a number

    int ReversedNumber = reverse(n); // Call the reverse function
    cout << "Reverse of the given number is: " << ReversedNumber << endl; // Output the result
    return 0;
}
