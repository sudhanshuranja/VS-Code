public class MiddleNo {
    public static void main(String[] args) {
        int a = 10;
        int b = 20;
        int c = 30;
        if (a > b && a < c) {
            System.out.println("a is the middle number");
        } else if (b > a && b < c) {
            System.out.println("b is the middle number");
        } else {
            System.out.println("c is the middle number");
        }
    }
}
