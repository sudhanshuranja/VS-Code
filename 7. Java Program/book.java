class book_detail {
    int Id;
    String tittle;
    String author;
    int price;

    void display(){
        System.out.println("Tell me your Id : " +Id);
        System.out.println("Your tittle : " +tittle);
        System.out.println("Author name : " +author);
        System.out.println("Price is : " +price);
    }
}

    class book{
        public static void main(String s[])
        {
book_detail a= new book_detail();
 a.Id = 10123;
 a.tittle = "Wings Of Fire";
 a.author = "A P J Abdul Kalam";
 a.price = 50;

a.display();

        }
    }

