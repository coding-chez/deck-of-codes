/*
Diagonal Divide
by Jay Vince Serato

You've gotta cut the set of circles perfectly along the diagonal line.


Given a number, print a square composed of letter o's and percent along the diagonal right. Provide a space after each character.

Sample Output 1

Enter num: 5
o o o o %
o o o % o
o o % o o
o % o o o
% o o o o
*/

#include <stdio.h>

int main() 
{
    int num;

    printf("Enter num: ");
    scanf("%d", &num);

    for (int i = 0; i < num; i++) {
        for (int j = 0; j < num; j++) {
            if (j == num - i - 1) {
                printf("%c ", '%');
            } else {
                printf("%c ", 'o');
            }
        }
        printf("\n");
    }

    return 0;
}
