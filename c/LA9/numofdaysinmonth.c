#include <stdio.h>

int main() 
{
    int month, days;

    printf("Enter a month number (1-12): ");
    scanf("%d", &month);

    if (month == 2) {
        days = 28;
    } else if (month == 4 || month == 6 || month == 9 || month == 11) {
        days = 30; 
    } else {
        days = 31;
    }

    printf("Number of days in month %d: %d\n", month, days);

    return 0;
}