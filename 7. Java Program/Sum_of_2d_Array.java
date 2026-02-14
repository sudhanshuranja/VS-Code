// Sum of array elements of 2d array and store in the third array
// create a 2d array of size 3x3 and store the elements of the array in the third array
// and print the third array


class Sum_of_2d_Array {

    public static void main(String[] args) {
        int[][] arr1 = {{1,2,3},{4,5,6},{7,8,9}};
        int[][] arr2 = {{1,2,3},{4,5,6},{7,8,9}};
        int[][] arr3 = new int[3][3];
        for(int i = 0; i < 3; i++) {
            for(int j = 0; j < 3; j++) {
                arr3[i][j] = arr1[i][j] + arr2[i][j];
            }
        }
        System.out.println("The sum of the two arrays is: ");
        for(int i = 0; i < 3; i++) {
            for(int j = 0; j < 3; j++) {
                System.out.print(arr3[i][j] + " ");
            }
            System.out.println();
        }
    }
}
