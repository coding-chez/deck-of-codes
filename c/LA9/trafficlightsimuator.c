#include <stdio.h>

int main() 
{
    char color;
    
    printf("Enter the traffic light color (R, Y, G): ");
    scanf(" %c", &color);

    switch (color) {
        case 'R':
        case 'r':
            printf("Action: Stop\n");
            break;
        case 'Y':
        case 'y':
            printf("Action: Attention\n");
            break;
        case 'G':
        case 'g':
            printf("Action: Go\n");
            break;
        default:
            printf("Invalid input.\n");
    }

    return 0;
}