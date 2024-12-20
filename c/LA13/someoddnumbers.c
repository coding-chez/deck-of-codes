/*
Some Odd Numbers
by Jay Vince Serato

Odd numbers start from 1, 3, 5, 7, 9, and so on.


Your task is given two numbers, n and m, output all the odd numbers from n to m inclusive.

Sample Output 1

Enter two numbers: 1 10
1
3
5
7
9
*/

#include <stdio.h>

int main() 
{
    int n, m;

    printf("Enter two numbers: ");
    scanf("%d %d", &n, &m);

    for (int i = n; i <= m; i++) {
        if (i % 2 != 0) {
            printf("%d\n", i);
        }
    }

    return 0;
}