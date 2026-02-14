#include <iostream>
using namespace std;

int main() {
    int rowsCount, colsCount;
    cout << "Enter the value of rows number: ";
    cin >> rowsCount;
    cout << "Enter the value of column number: ";
    cin >> colsCount;

    // Loop through each row
    for (int rows = 0; rows < rowsCount; rows++) {
        // Print stars for the first and last row
        if (rows == 0 || rows == rowsCount - 1) {
            for (int cols = 0; cols < colsCount; cols++) {
                cout << "* ";
            }
        } else {
            // Print stars only for the first and last column
            for (int cols = 0; cols < colsCount; cols++) {
                if (cols == 0 || cols == colsCount - 1) {
                    cout << "* ";
                } else {
                    cout << "  "; // Print spaces for inner columns
                }
            }
        }
        cout << endl; // Move to the next line after each row
    }

    return 0;
}
// #include<iostream>
// using namespace std;

// int main()
// {
// int  rowsCount;
// cout << "Enter the value of rows number: ";
// cin >> rowsCount;
// int colsCount;
// cout << "Enter the value of column number: ";
// cin >> colsCount;
// /*

// Enter the value of rows number: 5
// Enter the value of column number: 6

//  *  *  *  *  *  * 
//  *              * 
//  *              * 
//  *              * 
//  *  *  *  *  *  * 
 
 
//  */

// // for the rows . Jitna rows hoga utna print 
// for ( int rows = 0; rows < rowsCount; rows+=1)
// {
//     // Pehle aur last rows ke sare columns me sara star print ho 
//     if (rows == 0 || rows == rowsCount-1)
//     {
//         // This loop is for columns    printing the star in the first and last rows
//         for ( int cols = 0 ; cols < colsCount; cols+=1)
//        { 
//         cout << " * ";
//        }

//        }
    
//     // Uper ka code first and last rows me star print karne ke liye h
 
//  else 
// {
//      // ye first column me star print karne ke lliye h
    
//     cout <<" * ";

//     //Ye loop rows no. 2 se last rows -1 tak ke columns no 2 se columns last - 1 tak ke liye h
     
//      for ( int i=0 ;i<colsCount-2; i++ )
//     {
//         // ye last wale columns me star print karne ke liye h
//         cout <<"   ";
//     }

// //ye last 

//     cout << " * ";

// }

// // ye ye loop ko next rows me le jaane ke liye 

// cout << endl;


// }

// return 0;

// }