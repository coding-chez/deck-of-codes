#include <stdio.h>
#include <math.h>

int main() 
{
    float diameter, radius, circumference, area;

    printf("Enter diameter: ");
    scanf("%f", &diameter);

    radius = diameter / 2.0;
    circumference = 2 * M_PI * radius;
    area = M_PI * radius * radius;

    printf("Circumference = %.2f\n", circumference);
    printf("Area = %.2f\n", area);

    return 0;
}