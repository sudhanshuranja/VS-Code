#include <iostream>
using namespace std;

// ...............................Definition of the  Node structure..............................................
struct Node {
    int data;
    Node* next;
    Node(int new_data) {
        data = new_data;
        next = nullptr;
    }
};

// .........................Function to insert a new node at the beginning of the list............................
Node* insertAtFront(Node* head, int new_data) {
    Node* new_node = new Node(new_data);
    new_node->next = head;
    return new_node;
}

// ...........................Function to insert a new node at a specific position..............................
Node* insertAtPosition(Node* head, int new_data, int position)
 {
    Node* new_node = new Node(new_data);
    if (position == 0)
        {
        new_node->next = head;
        return new_node;
    }
    Node* curr = head;
    for (int i = 0; curr != nullptr && i < position - 1; i++)
    {
        curr = curr -> next;
    }
    if (curr == nullptr)
     {
        cout << "Position out of bounds" << endl;
        delete new_node;
        return head;
    }
    new_node->next = curr->next;
    curr->next = new_node;
    return head;
}

// .................................Function to print the linked list........................................
void printList(Node* head) {
    Node* curr = head;
    while (curr != nullptr) {
        cout << curr->data << " ";
        curr = curr->next;
    }
    cout << endl;
}

int main() {
    // ...............................Create the linked list 2->3->4->5.......................................
    Node* head = new Node(2);
    head->next = new Node(3);
    head->next->next = new Node(4);
    head->next->next->next = new Node(5);

    // ................................Print the original list...........................................
    cout << "Original Linked List: ";
    printList(head);

    // ............................Take user input for the value and position................................
    int data, position;
    cout << "Enter the value to insert: ";
    cin >> data;
    cout << "Enter the position to insert (0 for front): ";
    cin >> position;

    // ............................Insert the new node at the specified position..............................
    head = insertAtPosition(head, data, position);

    // ...............................Print the updated list...............................................
    cout << "After inserting the node: ";
    printList(head);

    return 0;
}
