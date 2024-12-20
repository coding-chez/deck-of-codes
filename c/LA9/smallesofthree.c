#include <stdio.h>

int main() {
    int i1, i2, i3, smallest;

    printf("Enter the first integer: ");
    scanf("%d", &i1);
    printf("Enter the second integer: ");
    scanf("%d", &i2);
    printf("Enter the third integer: ");
    scanf("%d", &i3);

    smallest = i1;

    if (i1 <= i2 && i1 <= i3) {
        smallest = i1;
    } else if (i2 <= i1 && i2 <= i3) {
        smallest = i2;
    } else {
        smallest = i3;
    }

    printf("Smallest = %d\n", smallest);

    return 0;
}