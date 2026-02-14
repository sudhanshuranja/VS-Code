// Write a program to perform a singly linked list.;
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

    void insert(int val) {
        Node* newNode = new Node();
        newNode->data = val;
        newNode->next = head;
        head = newNode;
    }

    void display() {
        Node* temp = head;
        while (temp != nullptr) {
            cout << temp->data << " -> ";
            temp = temp->next;
        }
        cout << "nullptr" << endl;
    }

    void deleteNode(int val) {
        Node* temp = head;
        Node* prev = nullptr;
        
        if (temp != nullptr && temp->data == val) {
            head = temp->next;
            delete temp;
            return;
        }
        
        while (temp != nullptr && temp->data != val) {
            prev = temp;
            temp = temp->next;
        }
        
        if (temp == nullptr) return;
        
        prev->next = temp->next;
        delete temp;
    }
};

int main() {
    SinglyLinkedList list;
    list.insert(10);
    list.insert(20);
    list.insert(30);
    list.display();   // Output: 30 -> 20 -> 10 -> nullptr
    list.deleteNode(20);
    list.display();   // Output: 30 -> 10 -> nullptr
    return 0;
}
