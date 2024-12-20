#include <stdio.h>

int main() 
{
    char color;

    printf("Enter the first letter of the color: ");
    scanf(" %c", &color);

    if (color == 'R' || color == 'r') {
        printf("Red\n");
    } else if (color == 'B' || color == 'b') {
        printf("Blue\n");
    } else if (color == 'G' || color == 'g') {
        printf("Green\n");
    } else {
        printf("None of the above\n");
    }

    return 0;
}