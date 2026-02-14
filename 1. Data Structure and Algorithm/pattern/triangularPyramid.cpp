#include<iostream>
using namespace std;
 
 int main()
 {

int rowsCount;
cout <<" Give me the rows number: ";
cin>> rowsCount;
/*

 Give me the rows number: 5
  *                          rows no 0 me 1 star h
  *    *                     rows no 1 me 2 star h
  *    *    *                rows no 2 me 3 star h
  *    *    *    *           rows no 3 me 4 star h
  *    *    *    *    *      rows no 4 me 5 star h

iska matlab columns = rows + 1

*/
for ( int rows =0 ; rows< rowsCount; rows+=1)
{

    // here the formet of printing is rows ke no. se ek jyada h column me star .
    for ( int cols= 0 ; cols <rows+1 ; cols+=1)
    {
        cout << "  *  ";

    }
cout << endl;


}
return 0;

 }