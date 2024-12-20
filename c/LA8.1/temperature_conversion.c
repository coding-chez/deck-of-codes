#include <stdio.h>

int main() 
{
    float fahrenheit, celcius;

    printf("Enter Fahrenheit reading: ");
    scanf("%f", &fahrenheit);

    celcius = (5.0 / 9.0) * (fahrenheit - 32.0);

    printf("%.2f Fahrenheit = %.2f Celcius\n", fahrenheit, celcius);

    return 0;
}