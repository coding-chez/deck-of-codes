/*
Alternative Number
by Jay Vince Serato

A number is known to have an alter ego, which is the sum of its digits.


Example, the number 513 will have 9 since it is the sum of its digits 5 + 1 + 3.


Given a number as an integer, output the sum of its digits.

Sample Output 1

Enter num: 513
Sum = 9
*/
#include <stdio.h>

int main() 
{
    int num, sum = 0;

    printf("Enter num: ");
    scanf("%d", &num);

    while (num != 0) {
        sum += num % 10;
        num /= 10;
    }

    printf("Sum = %d\n", sum);

    return 0;
}