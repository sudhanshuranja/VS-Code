#include<iostream>
using namespace std;

int main()
{
int rowsCount;
    cout << "Enter the number of rows you want to create: ";
    cin >> rowsCount;
/* 
Enter the number of rows you want to create: 5
   *    *    *    *    * 
     *    *    *    * 
       *    *    * 
         *    * 
           * 

               spaces         star     logic for space
     rows 0 =    0             5     |-> rows number is equal to the spaces will give us the spaces we want.
     rows 1 =    1             4
     rows 2 =    2             3       logic for star 
     rows 3 =    3             2       |-> rows count - rows is given us the total number of star we want.
     rows 4 =    4             1
     rows 5 =    5             0    
*/
for (int rows = 0; rows < rowsCount; rows++) 
    {
        // Print leading spaces
        for (int cols = 0; cols < rows; cols++)
        {
            cout << "  ";
        }
         for (int cols = 0; cols < rowsCount - rows; cols++) // Corrected this line
        {
            cout << "  * "; // Adjusted spacing for better alignment
        }

cout << endl;
    }

return 0;
}