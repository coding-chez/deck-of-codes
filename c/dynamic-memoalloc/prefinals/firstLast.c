#include <stdio.h>

int calculateSum(int* arr1, int* arr2, int size1, int size2);
int calculateProduct(int* arr1, int* arr2, int size1, int size2);

int main() {
    int n1, n2, arr1[100], arr2[100], sum, product;

    printf("Enter size of the first array: ");
    scanf("%d", &n1);
    printf("Enter elements of the first array:\n");
    for (int i = 0; i < n1; i++) {
        scanf("%d", &arr1[i]);
    }

    printf("Enter size of the second array: ");
    scanf("%d", &n2);
    printf("Enter elements of the second array:\n");
    for (int i = 0; i < n2; i++) {
        scanf("%d", &arr2[i]);
    }

    sum = calculateSum(arr1, arr2, n1, n2);
    product = calculateProduct(arr1, arr2, n1, n2);

    printf("Sum of first and last: %d\n", sum);
    printf("Product of second and second to the last: %d\n", product);

    return 0;
}

int calculateSum(int* arr1, int* arr2, int size1, int size2) {
    return arr1[0] + arr2[size2 - 1];
}

int calculateProduct(int* arr1, int* arr2, int size1, int size2) {
    return arr1[1] * arr2[size2 - 2];
}