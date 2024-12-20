#include <stdio.h>

int main() 
{
    char letter;

    printf("Enter a letter: ");
    scanf(" %c", &letter); 

    if ((letter >= 'a' && letter <= 'z') || (letter >= 'A' && letter <= 'Z')) {
        if (letter >= 'a' && letter <= 'z') {
            printf("%c\n", letter - ('a' - 'A'));
        } else {
            printf("%c\n", letter + ('a' - 'A'));
        }
    } else {
        printf("Invalid letter\n");
    }

    return 0;
}
