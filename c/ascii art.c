#include <stdio.h>

int main() 
{
    char character;

    printf("Enter a character: ");
    scanf("%c", &character);

    printf("ASCII art of %c:\n", character);
 
            printf("   __%c__\n", character);
            printf("  /     \\\n");
            printf(" |   o   |\n");
            printf("(|  (_)  |)\n");
            printf(" |   |   |\n");
            printf(" |  / \\  |\n");
            printf(" |       |\n");
            printf(" |       |\n");
            printf(" |_______|\n");

    return 0;
}