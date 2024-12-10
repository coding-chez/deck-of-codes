#include <stdio.h>

int main() {
    int number;

    printf("Enter the number: ");
    scanf("%d", &number);

    if (number < 50) {
        printf("Bad Luck\n");
    } else if (number >= 7 && number <= 13) {
        printf("Be Extra Careful\n");
    } else if (number > 81 && number < 85) {
        printf("You are Blessed\n");
    } else {
        printf("Good Luck\n");
    }

    return 0;
}
