#include <stdio.h>

int main() 
{
    int minutes;

    printf("Enter time in minutes: ");
    scanf("%d", &minutes);

    int hours = minutes / 60;
    int remainingMinutes = minutes % 60;

    printf("%d hour/s and %d minute/s\n", hours, remainingMinutes);

    return 0;
}