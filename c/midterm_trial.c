#include <stdio.h>
#include <stdlib.h>

void convertNumber(int number, int fromBase, int toBase) {
    char convertedNumber[32]; 
    int index = 0;
    int remainder;

    while (number > 0) {
        remainder = number % toBase;

        if (remainder >= 10) {
            convertedNumber[index] = 'A' + (remainder - 10);
        } else {
            convertedNumber[index] = '0' + remainder;
        }

        number /= toBase;
        index++;
    }

    printf("Converted number: ");
    for (int i = index - 1; i >= 0; i--) {
        printf("%c", convertedNumber[i]);
    }
    printf("\n");
}

int main() {
    int number, fromBase, toBase;

    printf("Enter the number: ");
    scanf("%d", &number);

    printf("Enter the base of the number: ");
    scanf("%d", &fromBase);

    printf("Enter the base to convert to: ");
    scanf("%d", &toBase);

    if (fromBase < 2 || toBase < 2 || fromBase > 36 || toBase > 36) {
        printf("Invalid base! Base should be between 2 and 36.\n");
        return 1;
    }

    convertNumber(number, fromBase, toBase);

    return 0;
}