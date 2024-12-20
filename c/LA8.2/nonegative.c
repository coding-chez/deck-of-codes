#include <stdio.h>

int main() 
{
    int num1, num2, num3, sum;

    printf("First input: ");
    scanf("%d", &num1);

    printf("Second input: ");
    scanf("%d", &num2);

    printf("Third input: ");
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

    printf("Sum = %d\n", sum);

    return 0;
}