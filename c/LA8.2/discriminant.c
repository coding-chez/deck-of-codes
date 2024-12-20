#include <stdio.h>
#include <math.h>

int main() 
{
    double a, b, c, discriminant;

    printf("Enter a: ");
    scanf("%lf", &a);
    printf("Enter b: ");
    scanf("%lf", &b);
    printf("Enter c: ");
    scanf("%lf", &c);

    discriminant = b * b - 4 * a * c;

    if (discriminant >= 0) {
        double squareRoot = sqrt(discriminant);
        printf("Answer: %.2lf\n", squareRoot);
    } else {
        printf("The discriminant is negative, no real roots exist.\n");
    }
    
    return 0;
}