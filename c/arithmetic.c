#include <stdio.h>
#include <math.h>

int main()
{
    int a, b, c, d;
    float e;

    printf("Enter A: ");
    scanf("%d", &a);

    printf("Enter B: ");
    scanf("%d", &b);

    printf("Enter C: ");
    scanf("%d", &c);

    printf("Enter D: ");
    scanf("%d", &d);

    e = (a - b) / (float)(c + d);

    printf("%d - %d / %d + %d = %.3f\n", a, b, c, d, e);

    return 0;
}