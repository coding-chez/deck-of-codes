#include <stdio.h>
#include <math.h>

int main() 
{

    double input1, input2, input3, input4, sum, roundedSum, squareRoot;

    printf("First input: ");
    scanf("%lf", &input1);

    printf("Second input: ");
    scanf("%lf", &input2);

    printf("Third input: ");
    scanf("%lf", &input3);

    printf("Fourth input: ");
    scanf("%lf", &input4);

    sum = ceil(input1) + ceil(input2) + ceil(input3) + ceil(input4);
    squareRoot = sqrt(sum);

    printf("Answer = %.2lf\n", squareRoot);

    return 0;
}