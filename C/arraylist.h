#ifndef ARRAYLIST_H
#define ARRAYLIST_H

typedef struct {
    int arr[100];
    int size;
} ArrayList;

void insertEnd(ArrayList* list, int value);
int getSizeArray(ArrayList* list);
void printArray(ArrayList* list);

#endif