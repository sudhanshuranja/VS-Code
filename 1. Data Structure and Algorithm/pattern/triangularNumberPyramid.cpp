#include<iostream>
using namespace std ;

 int main()
 {
int rowsCount;
cout<< "Enter the number of rows : ";
cin >> rowsCount;

/*

Enter the number of rows : 5
1                  cols 0 having no. = 1
1 2                cols 1 having no. = 2
1 2 3              cols 2 having no. = 3
1 2 3 4            cols 3 having no. = 4
1 2 3 4 5          cols 4 having no. = 5
 and one difference is number that increasing as the columns increased columns 0 havin 1 star and like that
as same as like 
  *                          rows no 0 me 1 star h
  *    *                     rows no 1 me 2 star h
  *    *    *                rows no 2 me 3 star h
  *    *    *    *           rows no 3 me 4 star h
  *    *    *    *    *      rows no 4 me 5 star h

*/

for (int rows = 0 ; rows < rowsCount ; rows +=1)
{
for (int cols = 0; cols< rows + 1 ; cols+=1)
{

    cout << cols + 1 << " ";

}

cout << endl;

}
return 0;
 }