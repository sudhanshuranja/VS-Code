#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next; // Self-referential pointer
};

int main() {
    // Creating nodes
    Node* head = new Node();
    Node* second = new Node();
    Node* third = new Node();

    // Assigning data
    head->data = 10;
    head->next = second;

    second->data = 20;
    second->next = third;

    third->data = 30;
    third->next = nullptr;

    // Traversing and displaying the list
    Node* temp = head;
    while (temp != nullptr) {
        cout << temp->data << " -> ";
        temp = temp->next;
    }
    cout << "NULL" << endl;

    return 0;
}
