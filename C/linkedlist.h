#ifndef LINKEDLIST_H
#define LINKEDLIST_H

typedef struct Node {
    int data;
    struct Node* next;
} Node;

void insertFront(Node** head, int value);
int getSize(Node* head);
void printList(Node* head);

#endif