   class multiplication_of_2d_Array{
      public static void main(String args[])
   {
   int a[][] = {{1,2,3},{4,5,6}};
   int b[][] = {{7,8},{9,10},{11,12}};
   int c[][] = new int[2][2];

   System.out.println("First Matrix");
   for (int i = 0; i <2; i++)
   {
   for(int j = 0; j<3; j++) 
   {
   System.out.println(a[i][j] + "\t");
   }
   System.out.println();
   }

   System.out.println("Second Matrix");
   for (int i = 0; i <3; i++)
   {
   for(int j = 0; j<2; j++) 
   {
   System.out.println(b[i][j] + "\t");
   }
   System.out.println();
   }
   //Multiplication
   for (int i = 0; i <2; i++)
   {
   for(int j = 0; j<2; j++) 
   {
   c[i][j] = 0;
   for(int k = 0; k < 3; k++)
   {
   c[i][j] += a[i][k] * b[k][j];
   }
   }
   }
   System.out.println("Result");
   for (int i = 0; i < 2; i++) {
       for (int j = 0; j < 2; j++) {
           System.out.print(c[i][j] + "\t");
       }
       System.out.println();
       // Insert closing bracket for main method to fix syntax error
   }
   }}