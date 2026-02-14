public class FibonacciSeries {

    public static void main(String[] args){
        
        int number = 10;
        int a = 0;
        int b = 1;

        System.out.println(a);
        System.out.println(b);

        for( int i = 0; i <= number; i++)
        {
           
           int next = a + b ;
           a = b;
           b = next;
           System.out.println(next);
       
        }
    }
}