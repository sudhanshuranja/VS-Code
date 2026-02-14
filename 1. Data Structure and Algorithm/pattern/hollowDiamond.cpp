#include<iostream>
using namespace std;

int main()
{
//      What is the number of rows count : 10
//          *
//         * *
//        *   *
//       *     *
//      *       *
//     *         *
//    *           *
//   *             *
//  *               *
// *                 *
// *                 *
//  *               *
//   *             *
//    *           *
//     *         *
//      *       *
//       *     *
//        *   *
//         * *
//          *
int rowsCount;
cout<< " What is the number of rows count : ";
cin >> rowsCount;
 
 for (int  rows = 0; rows < rowsCount; rows++)
 {
    for (int cols = 0; cols < rowsCount-rows -1; cols++)
    {
        cout << " ";
    }
    for ( int cols= 0; cols < 2*rows+1; cols++ ){
        if (cols==0||cols==2*rows)
        {
            cout << "*";

        }
        else
        {
            cout<< " ";
        }
        
    }
    cout << endl;
 }
 for (int  rows = 0; rows < rowsCount; rows++)
 {
    for (int cols = 0; cols < rows; cols++)
    {
        cout << " ";
    }
    for ( int cols= 0; cols < 2*rowsCount-2*rows-1; cols++ ){
        if (cols==0||cols==2*rowsCount-2*rows-2)
        {
            cout << "*";

        }
        else
        {
            cout<< " ";
        }
        
    }
    cout << endl;
 }
return 0;

}