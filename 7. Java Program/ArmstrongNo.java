public class ArmstrongNo {
    public static void main(String[] args) {
 // #Armstrong Number is a number that is equal to the sum of the cubes of its digits.
int number = 153;
int originalNumber = number;
int result = 0;
 while (originalNumber != 0) {
    int remainder = originalNumber % 10;
    result += Math.pow(remainder, 3);
    originalNumber /= 10;
}
if (result == number) {
    System.out.println(number + " is an Armstrong number");
} else {
    System.out.println(number + " is not an Armstrong number");
}
}
}
