/*
Floyd's Triangle
by Jay Vince Serato

The Floyd's triangle is a right-angled triangle that contains consecutive natural numbers. In Floyd's triangle, the number starts with 1 in the top left corner, and then it consecutive filling the defined rows through the numbers.


Given a number, write the Floyd's triangle from 1 to that number.

Sample Output 1

Enter num: 10
1
2 3
4 5 6
7 8 9 10
*/

#include <stdio.h>

int main() 
{
    int num;

    printf("Enter num: ");
    scanf("%d", &num);

    int currentNumber = 1;

    for (int i = 1; i <= num; i++) {
        for (int j = 1; j <= i; j++) {
            printf("%d ", currentNumber);
            currentNumber++;

            if (currentNumber > num) {
                break;
            }
        }

        if (currentNumber > num) {
            break;
        }

        printf("\n");
    }

    return 0;
}
