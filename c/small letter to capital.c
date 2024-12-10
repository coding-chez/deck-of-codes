#include <stdio.h>

int main() 
{
    char lowercase;
    char uppercase;

    printf("Enter letter: ");
    scanf(" %c", &lowercase);

    if (lowercase >= 'a' && lowercase <= 'z') 
    {
        uppercase = lowercase - ('a' - 'A');
        printf("Capital letter = %c\n", uppercase);
    } 
    
    else 
    {
        printf("Invalid input. Please enter a lowercase letter.\n");
    }

    return 0;
}
