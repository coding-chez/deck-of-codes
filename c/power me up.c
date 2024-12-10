#include <stdio.h>
#include <math.h>

int main ()
{
    int a, b;
    
    printf ("First number: ");
    scanf ("%d", &a);
    
    printf ("Second number: ");
    scanf ("%d", &b);

    double result = pow(a, b);

    printf ("%d ^ %d = %.0lf\n", a, b, result);

    return 0;
}