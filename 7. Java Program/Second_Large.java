public class Second_Large {
    public static void main(String[] args) {
        int arr[] = {1,2,3,4,5,6,7,8,9,10};

        int max = arr[0];
        int second_max = arr[0];
        for(int i = 0; i < arr.length; i++)
        {
            if(arr[i] > max)
            {
                max = arr[i];
            }
        }
        for(int i = 0; i < arr.length; i++)
        {

            if(arr[i] <max && arr[i] > second_max)
            {
                second_max = arr[i];
            }
        }
        System.out.println("Second largest number is: " + second_max);
    }
}