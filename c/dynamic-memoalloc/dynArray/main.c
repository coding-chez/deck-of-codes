#include "dynArray.h"
#include <stdio.h>
#include <stdlib.h>

int main() {
  int* LA;
  int size = 0;
  int choice;

  do {
    menu();
    printf("Enter your choice: ");
    scanf("%d", &choice);

    switch (choice) {
      case 1:
        printf("Enter the size of the array: ");
        scanf("%d", &size);
        createArray(LA, size);
        break;
      case 2:
        printArray(LA, size);
        break;
      case 3:
        printf("Sum of array: %d\n", sum(LA, size));
        break;
      case 4:
        printf("Largest element: %f\n", largest(LA, size));
        break;
      case 5:
        printf("Smallest element: %f\n", smallest(LA, size));
        break;
      case 6:
        resize(LA, &size);
        break;
      case 7:
        addElement(LA, &size);
        break;
      case 8:
        Exit();
        break;
      default:
        printf("Invalid choice\n");
    }
  } while (choice != 8);

  return 0;
}