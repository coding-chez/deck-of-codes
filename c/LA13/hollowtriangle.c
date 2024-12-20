/*
Hollow Triangle
by Jay Vince Serato

Given a number, print the pyramid with n rows to where only the outline is comprised of asterisks.


The inside of the pyramid must be hollow i.e. filled with space.

Sample Output 1

Enter num: 5
    *
   * *
  *   *
 *     *
*********
*/

#include <stdio.h>

int main() 
{
    int num;

    printf("Enter num: ");
    scanf("%d", &num);

    for (int i = 1; i <= num; i++) {
        for (int j = 1; j <= num - i; j++) {
            printf(" ");
        }
        for (int j = 1; j <= 2 * i - 1; j++) {
            if (j == 1 || j == 2 * i - 1 || i == num) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }

    return 0;
}
