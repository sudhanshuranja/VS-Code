#include<iostream>
using namespace std;

int main()
{
int rows , cols;
cout << "Enter the number of Rows: ";
cin >> rows;
cout << "Enter the number of Columns: ";
cin >> cols;

/* 

Enter the number of Rows: 5
Enter the number of Columns: 5
 *  *  *  *  *  * 
 *  *  *  *  *  *
 *  *  *  *  *  *
 *  *  *  *  *  *
 *  *  *  *  *  *
 *  *  *  *  *  *


*/

for (int i = 0; i <= rows; i = i + 1) 
{
    for (int j = 0; j <= cols; j = j + 1) 
    { 
        cout << " * ";
    }
    cout << endl;

}


// -> her is the direct representation of star presentation.

// for (int rows = 0 ; rows <=4 ; rows+=1)
// {
//     for (int cols = 0; cols <= 4; cols+=1)
//     {
//         cout<< " * ";

//     }
//     cout << endl;
// }

return 0;


}