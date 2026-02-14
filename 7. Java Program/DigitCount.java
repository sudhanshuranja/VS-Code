// By using do while loop count the number of digits in a number
// use modulus operator to get the last digit of the number
// use division operator to remove the last digit of the number
// use a counter to count the number of digits
// print the number of digits

public class DigitCount {
    public static void main(String[] args) {
        int number = 1234567891;
        int count = 0;
        do {
            number = number / 10;
            count = count + 1;
        } while (number > 0);
        System.out.println("The number of digits in the number is: " + count);
}}
 