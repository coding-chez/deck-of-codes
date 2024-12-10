#include <stdio.h>

int main() {
    int number = 10;
    int *ptr;

    ptr = &number;

    printf("Value of number: %d\n", number);
    printf("Address of number: %p\n", &number);
    printf("Value of ptr: %p\n", ptr);
    printf("Value pointed by ptr: %d\n", *ptr);

    *ptr = 20;

    printf("New value of number: %d\n", number);

    return 0;
}
