#include <stdio.h>

int main() 
{
    double firstNumber, secondNumber;

    printf("Enter the first number: ");
    scanf("%lf", &firstNumber);

    printf("Enter the second number: ");
    scanf("%lf", &secondNumber);

    if (firstNumber > secondNumber) {
        printf("Greater\n");
    } else {
        printf("Lesser\n");
    }

    return 0;
}