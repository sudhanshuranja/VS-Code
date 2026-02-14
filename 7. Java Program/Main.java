class Student {
    int id;
    String name;

    void display()
    {
        System.out.println("Student id is : "+ id);
        System.out.println("Student name is : "+ name);
    }
} // end of S1_StudentId class


public class Main
{
 public static void main (String args[])
 {
   Student  s1= new Student();
   Student s2= new Student();

   s1.id = 101;
   s1.name ="Rahul";   

   
   s2.id = 102;
   s2.name ="Rahul";   

s1.display();
s2.display();
 }
}
    
