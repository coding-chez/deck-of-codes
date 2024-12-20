#include <stdio.h>

int main() 
{
    char character;

    printf("Enter a single English alphabetic character: ");
    scanf(" %c", &character);  

    switch (character) 
	{
        case 'A':
        case 'E':
        case 'I':
        case 'O':
        case 'U':
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
            printf("The character is a vowel.\n");
            break;
        default:
            if ((character >= 'A' && character <= 'Z') || (character >= 'a' && character <= 'z')) {
                printf("The character is a consonant.\n");
            } else {
                printf("Invalid input.\n");
            }
    }

    return 0;
}