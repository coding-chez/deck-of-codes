#include <stdio.h>

int main() 
{

    float conversionRate, dollars, pesos;

    printf("Dollar-to-Peso: ");
    scanf("%f", &conversionRate);


    printf("Number of Dollars: ");
    scanf("%f", &dollars);

    pesos = conversionRate * dollars;

    printf("You receive %.2f pesos.\n", pesos);

    return 0;
}