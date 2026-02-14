#include <stdio.h>
#include <stdlib.h>
struct Node {
    int data;
    struct Node* next;
};
void append(struct Node** head_ref, int new_data) {
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));
    struct Node* last = *head_ref;

    new_node->data = new_data;
    new_node->next = NULL;

    if (*head_ref == NULL) {
        *head_ref = new_node;
        return;
    }

    while (last->next != NULL) {
        last = last->next;
    }

    last->next = new_node;
    return;
}


void printList(struct Node* node) {
    while (node != NULL) {
        printf("%d -> ", node->data);
       printf("%d -> ", node);
        node = node->next;
    }
    printf("NULL\n");
}

int main() {
    struct Node* head = NULL;

    append(&head, 110);
    append(&head, 200);
  //  append(&head, 31);
    //append(&head, 44);

    printf("Linked list: ");
    printList(head);

    return 0;
}
