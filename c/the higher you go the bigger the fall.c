#include <stdio.h>
#include <math.h>

int main() {
    double num1, num2, num3, num4, sum, result;

    printf("Enter the first input: ");
    scanf("%lf", &num1);

    printf("Enter the second input: ");
    scanf("%lf", &num2);

    printf("Enter the third input: ");
    scanf("%lf", &num3);

    printf("Enter the fourth input: ");
    scanf("%lf", &num4);

    num1 = ceil(num1);
    num2 = ceil(num2);
    num3 = ceil(num3);
    num4 = ceil(num4);

    sum = num1 + num2 + num3 + num4;

    result = sqrt(sum);

    printf("%.4lf\n", result);

    return 0;
}
