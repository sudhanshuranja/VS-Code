// Write a program to implement a stack that supports push pop and retrieving the minimum element.linke
#include <iostream>
#include <stack>
using namespace std;

class MinStack {
    stack<int> mainStack;
    stack<int> minStack;

public:
    void push(int val) {
        mainStack.push(val);
        if (minStack.empty() || val <= minStack.top()) {
            minStack.push(val);
        }
    }

    void pop() {
        if (!mainStack.empty()) {
            if (mainStack.top() == minStack.top()) {
                minStack.pop();
            }
            mainStack.pop();
        }
    }

    int getMin() {
        if (!minStack.empty()) {
            return minStack.top();
        }
        return -1; // Indicating the stack is empty
    }
};

int main() {
    MinStack minStack;
    minStack.push(5);
    minStack.push(3);
    minStack.push(7);
    minStack.push(2);
    cout << minStack.getMin() << endl;  // Output: 2
    minStack.pop();
    cout << minStack.getMin() << endl;  // Output: 3
    return 0;
}
