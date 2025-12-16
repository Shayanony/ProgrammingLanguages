#include <stdio.h>
#include "linkedlist.h"
#include "arraylist.h"

int main() {

    printf("=== LINKED LIST ===\n");
    Node* head = NULL;

    insertFront(&head, 10);
    insertFront(&head, 20);
    insertFront(&head, 30);

    printList(head);
    printf("Linked List Size: %d\n\n", getSize(head));


    printf("=== ARRAY LIST ===\n");
    ArrayList list = { .size = 0 };

    insertEnd(&list, 5);
    insertEnd(&list, 15);
    insertEnd(&list, 25);

    printArray(&list);
    printf("Array List Size: %d\n", getSizeArray(&list));

    return 0;
}