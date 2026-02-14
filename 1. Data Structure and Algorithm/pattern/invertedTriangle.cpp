#include<iostream>
using namespace std;

int main()
{
    int rowsCount;
    cout<< " Give me the rows count: ";
    cin>> rowsCount;

for ( int rows = 0 ; rows < rowsCount ; rows+=1)

{/*
 Give me the rows count: 5
 *  *  *  *  *     rows no. h 0 and column h 5-0 = 5 *
 *  *  *  *         rows no. h 1 and column h 5-1 = 4 *
 *  *  *           rows no. h 2 and column h 5-2 = 3 *
 *  *              rows no. h 3 and column h 5-3 = 2 *
 *                 rows no. h 4 and column h 5-4 = 1 *

yaha pe rowsCount jo ki 5 h - ho raha h rows no se 
*/

    for ( int cols = 0 ; cols < rowsCount-rows ; cols+=1){
        cout<< " *";
    }
    cout<< endl;

}

return 0;

}