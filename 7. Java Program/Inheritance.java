// Single Inheritance
class Parent
{
    int a = 10;
    void show()
    {
        System.out.println("This is Parent class");
        System.out.println("Value of a "+a);
        
    }
}
class Child extends Parent{
    int b = 20;
    void display()
    {
        System.out.println("This is Child class");
        System.out.println("Value of a "+a);
        System.out.println("Value of b "+b);   
    }
}
class Inheritance{
public static void main(String args[]){
    Child c = new Child();
    c.show();
    c.display();
}
}
