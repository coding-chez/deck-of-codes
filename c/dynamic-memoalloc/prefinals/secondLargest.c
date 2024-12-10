#include <stdio.h>

int findSecondLargest(int *arr, int size) {
    int largest = *arr;
    int secondLargest = *arr;

    for (int i = 1; i < size; i++) {
        if (*(arr + i) > largest) {
            secondLargest = largest;
            largest = *(arr + i);
        } else if (*(arr + i) > secondLargest && *(arr + i) < largest) {
            secondLargest = *(arr + i);
        }
    }

    return secondLargest;
}

int main() {
    int size;

    printf("Enter the size of the array: ");
    scanf("%d", &size);

    int arr[size];

    printf("Enter the elements of the array:\n");
    for (int i = 0; i < size; i++) {
        scanf("%d", &arr[i]);
    }

    int secondLargest = findSecondLargest(arr, size);

    printf("The second largest element in the array is: %d\n", secondLargest);

    return 0;
}