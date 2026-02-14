#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

void insertAtPosition(Node*& head, int pos, int value) {
    Node* newNode = new Node();
    newNode->data = value;

    if (pos == 1) { // Insert at head
        newNode->next = head;
        head = newNode;
        return;
    }

    Node* temp = head;
    for (int i = 1; i < pos - 1 && temp != nullptr; i++) temp = temp->next;

    if (temp != nullptr) {
        newNode->next = temp->next;
        temp->next = newNode;
    }
}

void printList(Node* head) {
    while (head != nullptr) {
        cout << head->data << " -> ";
        head = head->next;
    }
    cout << "NULL" << endl;
}

int main() {
    Node* head = nullptr;

    insertAtPosition(head, 1, 10); // Insert 10 at position 1
    insertAtPosition(head, 2, 20); // Insert 20 at position 2
    insertAtPosition(head, 2, 15); // Insert 15 at position 2

    printList(head);
    return 0;
}
