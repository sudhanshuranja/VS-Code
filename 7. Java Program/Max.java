public class Max {
    public static void main(String args[]){
        int arr[] = {2,5,6,3,8,9,1,11};
        int max = arr[0];
        for(int i = 0; i < arr.length; i++)
        {
            if(arr[i] > arr[0] )
             max = arr[i];
        
    }
    System.out.println("Maximum is : " + max);
    }
}
