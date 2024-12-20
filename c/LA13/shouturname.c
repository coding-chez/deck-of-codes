/*
Shout Your Name
by Jay Vince Serato

Sometimes we just have to shout out your name when the place is crowded and noisy.


Do so by asking for a character and a number, and print the said character n times, separated by space.


Do this multiple times until the number entered is 0.

Sample Output 1

Letter and number: k 1
k

Letter and number: a 4
a a a a

Letter and number: t 3
t t t

Letter and number: h 4
h h h h

Letter and number: n 0
*/

#include <stdio.h>

int main() 
{
    char letter;
    int number;

    do {
        printf("Letter and number: ");
        scanf(" %c %d", &letter, &number);

        for (int i = 0; i < number; i++) {
            printf("%c ", letter);
        }

        printf("\n");

    } while (number != 0);

    return 0;
}