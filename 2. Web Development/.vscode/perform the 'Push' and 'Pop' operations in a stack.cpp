#include <iostream>
using namespace std;

class Stack {
private:
    int arr[100]; // Array to store stack elements
    int top;      // Index of the top element in the stack
    int size;     // Maximum size of the stack

public:
    Stack(int s) {
        size = s;
        top = -1; // Initialize the stack as empty
    }

    // Push operation
    void push(int value) {
        if (top == size - 1) {
            cout << "Stack Overflow! Cannot push " << value << endl;
        } else {
            top++;
            arr[top] = value;
        }
    }

    // Pop operation
    void pop() {
        if (top == -1) {
            cout << "Stack Underflow! Cannot pop." << endl;
        } else {
            top--;
        }
    }

    // Display the stack
    void display() {
        if (top == -1) {
            cout << "Stack is empty!" << endl;
        } else {
            cout << "Stack elements: ";
            for (int i = top; i >= 0; i--) {
                cout << arr[i] << " ";
            }
            cout << endl;
        }
    }
};

int main() {
    Stack s(5); // Create a stack with a maximum size of 5

    // Push elements into the stack
    s.push(10);
    s.push(20);
    s.push(30);
    cout << "After pushing elements: ";
    s.display();

    // Pop an element from the stack
    s.pop();
    cout << "After popping one element: ";
    s.display();

    return 0;
}
