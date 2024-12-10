#include <stdio.h>

int getLastElement(const int* arr, int size);

int main() {
    int n, arr[100], i;

    printf("Enter array size: ");
    scanf("%d", &n);

    printf("Enter elements of the array:\n");
    for (i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Last element: %d\n", getLastElement(arr, n));

    return 0;
}

int getLastElement(const int* arr, int size) {
    return arr[size - 1];
}