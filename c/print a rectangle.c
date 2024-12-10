#include <stdio.h>

int main() 
{
    int width, height;

    printf("Enter width: ");
    scanf("%d", &width);

    printf("Enter height: ");
    scanf("%d", &height);

    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            printf("*");
        }
        printf("\n");
    }

    return 0;
}