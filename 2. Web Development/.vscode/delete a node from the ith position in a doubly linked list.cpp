#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
    Node* prev;
};

void deleteAtPosition(Node*& head, int position) {
    if (head == nullptr || position <= 0) {
        cout << "Invalid position or empty list!" << endl;
        return;
    }

    Node* temp = head;
    for (int i = 1; i < position && temp != nullptr; i++) {
        temp = temp->next;
    }

    if (temp == nullptr) {
        cout << "Position out of bounds!" << endl;
        return;
    }

    if (temp->prev != nullptr) {
        temp->prev->next = temp->next;
    } else {
        head = temp->next; // Deleting the head node
    }

    if (temp->next != nullptr) {
        temp->next->prev = temp->prev;
    }

    delete temp;
}

void printList(Node* head) {
    while (head != nullptr) {
        cout << head->data << " ";
        head = head->next;
    }
    cout << endl;
}

int main() {
    Node* head = new Node{10, nullptr, nullptr};
    Node* second = new Node{20, nullptr, head};
    Node* third = new Node{30, nullptr, second};

    head->next = second;
    second->next = third;

    cout << "Original list: ";
    printList(head);

    int pos;
    cout << "Enter the position to delete: ";
    cin >> pos;

    deleteAtPosition(head, pos);

    cout << "Updated list: ";
    printList(head);

    return 0;
}
