//singly linked list and also insert at the end 
#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

class SinglyLinkedList {
    Node* head;

public:
    SinglyLinkedList() {
        head = nullptr;
    }

    void insertAtEnd(int val) {
        Node* newNode = new Node();
        newNode->data = val;
        newNode->next = nullptr;
        
        if (head == nullptr) {
            head = newNode;
            return;
        }
        
        Node* temp = head;
        while (temp->next != nullptr) {
            temp = temp->next;
        }
        temp->next = newNode;
    }

};

int main() {
    SinglyLinkedList list;
    int n;
    cout << "Enter the number of elements to insert: ";
    cin >> n;
    for (int i = 0; i < n; i++) {
        int val;
        cout << "Enter the element to insert: ";
        cin >> val;
        list.insertAtEnd(val);
    }
    return 0;
}


