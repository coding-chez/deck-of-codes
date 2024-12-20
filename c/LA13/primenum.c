/*
Prime Number
by Jay Vince Serato

Given a number, identify if the number is prime or not.


A prime number is a whole number greater than 1 whose only factors are 1 and itself. A factor is a whole number that can be divided evenly into another number. The first few prime numbers are 2, 3, 5, 7, 11, 13, 17, and 19.


Output "Prime" if the number is prime, otherwise print "Not Prime".

Sample Output 1

Enter num: 13
Prime
Sample Output 2

Enter num: 12
Not Prime
*/

#include <stdio.h>

int main() 
{
    int num;
    int prime = 1; 
    
    printf("Enter num: ");
    scanf("%d", &num);

    if (num <= 1) {
        prime = 0; 
    } else {
        for (int i = 2; i <= num / 2; i++) {
            if (num % i == 0) {
                prime = 0;
                break;
            }
        }
    }
    if (prime) {
        printf("Prime\n");
    } else {
        printf("Not Prime\n");
    }
    return 0;
}