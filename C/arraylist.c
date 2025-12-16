#include <stdio.h>
#include "arraylist.h"

void insertEnd(ArrayList* list, int value) {
    list->arr[list->size++] = value;
}

int getSizeArray(ArrayList* list) {
    return list->size;
}

void printArray(ArrayList* list) {
    for (int i = 0; i < list->size; i++) {
        printf("%d ", list->arr[i]);
    }
    printf("\n");
}