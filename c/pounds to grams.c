#include <stdio.h>

int main() 
{
    float pounds, grams;

    printf("Enter pounds: ");
    scanf("%f", &pounds);

    grams = pounds * 453.59237;

    printf("%.2f pounds = %.2f grams\n", pounds, grams);

    return 0;
}
