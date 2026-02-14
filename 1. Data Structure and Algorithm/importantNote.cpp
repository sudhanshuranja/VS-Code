// ChatGPT said:
// ChatGPT
// The reason int n = 0647; outputs 423 is because the number 0647 is interpreted as an octal (base-8) number in C++.
#include <iostream>
using namespace std;

int main() {
    int n = 0647; // Octal representation
    cout << n << endl; // Outputs 423 in decimal
    return 0;
}
// Explanation
// Octal Representation:

// In C++, if a number starts with 0, it is treated as an octal number (base-8).
// The digits in an octal number range from 0 to 7.
// Conversion to Decimal:

// The octal number 0647 is interpreted as:

// 0
// ×
// 8
// 3
// +
// 6
// ×
// 8
// 2
// +
// 4
// ×
// 8
// 1
// +
// 7
// ×
// 8
// 0
// 0×8 
// 3
//  +6×8 
// 2
//  +4×8 
// 1
//  +7×8 
// 0
 
// Breaking it down:

// 6
// ×
// 8
// 2
// =
// 6
// ×
// 64
// =
// 384
// 6×8 
// 2
//  =6×64=384
// 4
// ×
// 8
// 1
// =
// 4
// ×
// 8
// =
// 32
// 4×8 
// 1
//  =4×8=32
// 7
// ×
// 8
// 0
// =
// 7
// ×
// 1
// =
// 7
// 7×8 
// 0
//  =7×1=7
// Adding these values:

// 384
// +
// 32
// +
// 7
// =
// 423
// 384+32+7=423
// Why Does This Happen?:

// This behavior is due to the way integers are parsed when prefixed with 0 in the code.
// Example
// cpp
// Copy code








// Important Note:
// If you want to ensure the number is treated as decimal, avoid the leading 0:
// cpp
// Copy code
// int n = 647; // This will be treated as a decimal
// Alternatively, you can use prefixes for other number systems:
// 0b for binary: 0b1010 (binary 1010 = decimal 10)
// 0x for hexadecimal: 0x1A (hexadecimal 1A = decimal 26)