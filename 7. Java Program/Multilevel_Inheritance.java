class GrandParents { // Fixed spelling
    int a = 10;
    void showA() {
        System.out.println("This is Grand Parent class");
        System.out.println("Value of a " + a);
    }
}

class Parent extends GrandParents {
    int b = 20;
    void showB() {
        System.out.println("This is Parent class");
        System.out.println("Value of b " + b);   
    }
}

class Child extends Parent {
    int c = 30;
    void showC() {
        System.out.println("This is Child class");
        System.out.println("Value of c " + c); 
    }
}

public class Multilevel_Inheritance { // Main class should usually be public
    public static void main(String args[]) {
        Child c = new Child();
        c.showA();
        c.showB();
        c.showC();
    }
}
