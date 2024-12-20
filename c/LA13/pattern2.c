/*
Pattern 2
by Jay Vince Serato

There is a pattern that goes 1, 4, 7, 10, 13, 16, and so on.


Given a number n, output the first n items of the pattern separated by space.

On a new line, also output the sum of the items.

Sample Output 1

Enter num: 5
1 4 7 10 13
Sum = 35
*/

#include <stdio.h>

int main() 
{
    int num, sum = 0;

    printf("Enter num: ");
    scanf("%d", &num);

    for (int i = 1; i <= num; i++) {
        printf("%d ", 3 * (i - 1) + 1);
        sum += 3 * (i - 1) + 1;
    }

    printf("\nSum = %d\n", sum);

    return 0;
}