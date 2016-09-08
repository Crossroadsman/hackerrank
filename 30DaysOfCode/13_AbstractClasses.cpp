//Write MyBook class
class MyBook: public Book {
    public:
        
        int price;
    
        MyBook(string t, string a, int p) : Book(t, a) {
            price = p;
            
        }
        void display() {
            cout << "Title: " << title << endl;   // not obvious how to use printf for STL strings, but cout works
            cout << "Author: " << author << endl;
            printf("Price: %d\n", price);
        }
};
