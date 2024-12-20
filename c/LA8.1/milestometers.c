#include <stdio.h>

int main() 
{
    double miles, meters;

    printf("Enter the distance (miles): ");
    scanf("%lf", &miles); // Using %lf for a double input

    meters = miles * 1609.34;

    printf("Distance (meters) = %.2lf\n", meters);

    return 0;
}