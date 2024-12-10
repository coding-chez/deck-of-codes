#include "dynArray.h"
#include <stdio.h>
#include <stdlib.h>

void createArray(int* LA, int size) {
  LA = (int*)malloc(size * sizeof(int));
  if (LA == NULL) {
    printf("Memory allocation failed.\n");
    exit(1);
  }
  for (int i = 0; i < size; i++) {
    printf("Enter element %d: ", i);
    scanf("%d", &LA[i]);
  }
}

void printArray(int* LA, int size) {
  for (int i = 0; i < size; i++) {
    printf("%d  ", LA[i]);
  }
  printf("\n");
}

int sum(int* LA, int size) {
  int sum = 0;
  for (int i = 0; i < size; i++) {
    sum += LA[i];
  }
  return sum;
}

float largest(int* LA, int size) {
  float largest = LA[0];
  for (int i = 1; i < size; i++) {
    if (LA[i] > largest) {
      largest = LA[i];
    }
  }
  return largest;
}

float smallest(int* LA, int size) {
  float smallest = LA[0];
  for (int i = 1; i < size; i++) {
    if (LA[i] < smallest) {
      smallest = LA[i];
    }
  }
  return smallest;
}

void resize(int* LA, int* size) {
  printf("Enter new size: ");
  scanf("%d", size);
  LA = realloc(LA, *size * sizeof(int));
}

void addElement(int* LA, int* size) {
  printf("Enter element to add: ");
  int element;
  scanf("%d", &element);
  LA = realloc(LA, (*size + 1) * sizeof(int));
  LA[*size] = element;
  *size = *size + 1;
}

void menu() {
  printf("~~~~~ARRAY~~~~~\n");
  printf("1. CREATEArray\n");
  printf("2. PRINTArray\n");
  printf("3. SUM\n");
  printf("4. LARGEST\n");
  printf("5. SMALLEST\n");
  printf("6. RESIZE\n");
  printf("7. ADD\n");
  printf("8. EXIT\n");
  printf("Enter a valid choice[1-8]\n");
}

void Exit() {
  exit(0);
}