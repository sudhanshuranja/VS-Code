public class sumOfDigits {
    public static void main(String[] args) {
        int number = 1234567891;
        int sumOfDigits = 0;
        do {
            int ldigit = number % 10;
            sumOfDigits = sumOfDigits + ldigit;
            number = number / 10;
        } while (number > 0);
        System.out.println("The number of digits in the number is: " + sumOfDigits);
}
}
