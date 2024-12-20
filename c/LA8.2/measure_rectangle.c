#include <stdio.h>

int main() 
{

    double length, width;

    printf("Enter length: ");
    scanf("%lf", &length);

    printf("Enter width: ");
    scanf("%lf", &width);

    double perimeter = 2 * length + 2 * width;
    double area = length * width;

    printf("Perimeter: %.3lf\n", perimeter);
    printf("Area: %.3lf\n", area);

    return 0;
}