#include <stdio.h>

int main() 
{
    int number;

    printf("Enter your number: ");
    scanf("%d", &number);

    if (number <=50) {
        printf("Bad Luck\n");
    } 
    if (number >= 7) {
    if (number <= 13) {
        printf("Be Extra Careful\n");
        }
    } 
    if (number > 50) {
            printf("Good Luck\n");
        }
    if (number >= 81) {
    if (number <= 85) {
       printf("You are Blessed\n");
        }
    }
    
    

    return 0;
}