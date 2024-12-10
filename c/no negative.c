#include <stdio.h>

int main() {
    int num1, num2, num3, sum;

    printf("Enter the first input: ");
    scanf("%d", &num1);

    printf("Enter the second input: ");
    scanf("%d", &num2);

    printf("Enter the third input: ");
    scanf("%d", &num3);

    if (num1 < 0) {
        num1 = -num1;
    }
    if (num2 < 0) {
        num2 = -num2;
    }
    if (num3 < 0) {
        num3 = -num3;
    }

    sum = num1 + num2 + num3;

    printf("%d\n", sum);

    return 0;
}
