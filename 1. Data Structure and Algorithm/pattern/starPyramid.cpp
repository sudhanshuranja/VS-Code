#include<iostream>
using namespace std;

int main()
{
    int rowsCount;
    cout << "Enter the number of rows you want to create: ";
    cin >> rowsCount;

    /* 
    Enter the number of rows you want to create: 10
         * 
        * * 
       * * * 
      * * * * 
     * * * * * 
    * * * * * * 
   * * * * * * * 
  * * * * * * * * 
 * * * * * * * * * 
* * * * * * * * * * 

*/

/* for (int cols = 0; cols < (rowsCount - rows - 1); cols++) 
{ 
    cout << "   ";
}

This loop handles printing leading spaces before the asterisks in each row.
    The expression (rowsCount - rows - 1) calculates how many spaces are needed before the first asterisk in the current row.
    For example, if rowsCount is 5, then:
    For row 0: (5 - 0 - 1) = 4 spaces
    For row 1: (5 - 1 - 1) = 3 spaces
    For row 2: (5 - 2 - 1) = 2 spaces
    For row 3: (5 - 3 - 1) = 1 space
    For row 4: (5 - 4 - 1) = 0 spaces (no leading spaces)
    */

    for (int rows = 0; rows < rowsCount; rows++) 
    {
        // Print leading spaces
        for (int cols = 0; cols < rowsCount - rows - 1; cols++)
        {
            cout << " ";
        }

        // Print asterisks
        //row + 1 is for printing stars in odd format like the above representing star printing
        /* 
        rows + 1 = 0 + 1 = 1 means 1 asterics that is star *.
        rows + 1 = 1 + 1 = 2 means 2 asterics that is star * *.
        rows + 1 = 2 + 1 = 3 means 3 asterics that is star * * *.
        rows + 1 = 3 + 1 = 4 means 4 asterics that is star * * * *.
        rows + 1 = 4 + 1 = 5 means 5 asterics that is star * * * * *.
        rows + 1 = 5 + 1 = 6 means 6 asterics that is star * * * * * *. 
        */
        for (int cols = 0; cols < rows + 1; cols++) // Corrected this line
        {
            cout << "* "; // Adjusted spacing for better alignment
        }

        // Move to the next line after each row
        cout << endl;
    }

    return 0;
}
