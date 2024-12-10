#include <stdio.h>
#include <math.h>

int main() 
{
    double a, b, c, discriminant;

    printf("Enter the value of a: ");
    scanf("%lf", &a);
    printf("Enter the value of b: ");
    scanf("%lf", &b);
    printf("Enter the value of c: ");
    scanf("%lf", &c);

    discriminant = b * b - 4 * a * c;

    if (discriminant >= 0) {
        double squareRoot = sqrt(discriminant);
        printf("The square root of the discriminant is: %.2lf\n", squareRoot);
    } else {
        printf("The discriminant is negative, no real roots exist.\n");
    }

    return 0;
}
