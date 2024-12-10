#include <stdio.h>

int isPalindrome(int *arr, int size);

int isPalindrome(int *arr, int size) {
    int *start = arr;
    int *end = arr + size - 1;

    while (start < end) {
        if (*start != *end) {
            return 0;
        }
        start++;
        end--;
    }

    return 1;
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

    int palindrome = isPalindrome(arr, size);

    if (palindrome) {
        printf("The array is a palindrome.\n");
    } else {
        printf("The array is not a palindrome.\n");
    }

    return 0;
}