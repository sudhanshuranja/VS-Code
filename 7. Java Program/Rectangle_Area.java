class Rectangle{
    int length;
    int breadth;
  

    void display(){
 System.out.println("Length of the rectangle" +length);
 System.out.println("Breadth of the rectangle" +breadth);

 System.out.println("Now The area will be : "+length * breadth);
    }
}
    class Rectangle_Area
    {
        public static void main(String s[])
        {
            Rectangle r = new Rectangle();

            r.length = 10;
            r.breadth = 20;
            r.display();
            
        }
    }

