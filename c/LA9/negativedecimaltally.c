#include <stdio.h>

int main() 
{
    float num1, num2, num3, num4;
    float sum = 0;

    printf("Enter the first number: ");
    scanf("%f", &num1);

    printf("Enter the second number: ");
    scanf("%f", &num2);

    printf("Enter the third number: ");
    scanf("%f", &num3);

    printf("Enter the fourth number: ");
    scanf("%f", &num4);

    if (num1 < 0) {
        sum += num1;
    }

    if (num2 < 0) {
        sum += num2;
    }

    if (num3 < 0) {
        sum += num3;
    }

    if (num4 < 0) {
        sum += num4;
    }

    printf("Sum of negative numbers: %.2f\n", sum);

    return 0;
}