#include <stdio.h>

int main() 
{
    int numerator, denominator;
    int quotient, remainder;

    printf("Enter numerator: ");
    scanf("%d", &numerator);

    printf("Enter denominator: ");
    scanf("%d", &denominator);

    quotient = numerator / denominator;
    remainder = numerator % denominator;

    printf("Answer = %.2f or %d remainder %d\n", (float)numerator / denominator, quotient, remainder);

    return 0;
}
