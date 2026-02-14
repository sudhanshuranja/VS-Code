#include<iostream>
using namespace std ;

 int main()
 {
int rowsCount;
cout<< "Enter the number of rows : ";
cin >> rowsCount;

/*

FROM ROWS WISE---------------------
 i = 0 ->  * * * * * 
 i = 1 ->  j = 4th position pe * hai aur baki position pe space h
 i = 2 ->  j = 3th position pe * hai aur baki position pe space h
 i = 3 ->  j = 2th position pe * hai aur baki position pe space h
 i = 4 ->  j = 1th position pe * hai aur baki position pe space h
 i = 5 ->  *

if columns = rowsCount - rows position - 1( ander ke taraf * dene ke liye) 

* sirf row 0 pe h aur last ke rows me h

Enter the number of rows : 10
 *  *  *  *  *  *  *  *  *  * 
 *                       *    
 *                    *       
 *                 *
 *              *
 *           *
 *        *
 *     *
 *  *
 *
 

 
*/

for (int rows = 0 ; rows < rowsCount ; rows +=1)
{
for (int cols = 0; cols< rowsCount ; cols+=1)
{

   if ( rows==0 || cols ==0 || cols == rowsCount-rows-1){
    cout << " * ";
   }
else 
{
    cout << "   ";
}
}

cout << endl;

}
return 0;
 }