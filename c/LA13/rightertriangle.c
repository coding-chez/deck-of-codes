/*
Righter Triangle
by Jay Vince Serato

Your task is given a number n, output a right triangle of n rows whose side is in the rightmost part.
Sample Output 1

Enter n: 4
   *
  **
 ***
****
*/

#include <stdio.h>

int main() 
{
    int n;

    printf("Enter n: ");
    scanf("%d", &n);

    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n - i; j++) {
            printf(" ");
        }

        for (int j = 1; j <= i; j++) {
            printf("*");
        }

        printf("\n");
    }

    return 0;
}