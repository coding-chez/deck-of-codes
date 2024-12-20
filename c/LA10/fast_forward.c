#include <stdio.h>

int main() 
{
    int hour, addHours;
    char timeOfDay;

    printf("Enter time: ");
    scanf("%d %c", &hour, &timeOfDay);

    printf("Hours to add: ");
    scanf("%d", &addHours);

    if ((timeOfDay == 'a' || timeOfDay == 'A') && hour == 12) {
        hour = 0;
    }

    if (timeOfDay == 'p' || timeOfDay == 'P') {
        hour += 12;
    }

    hour = (hour + addHours) % 24;

    char newTimeOfDay = (hour < 12) ? 'a' : 'p';

    if (hour > 12) {
        hour -= 12;
    }

    if (hour == 0) {
        hour = 12;
    }

    if (hour == 12 && (timeOfDay == 'p' || timeOfDay == 'P')) {
        newTimeOfDay = 'a';
    }

    printf("%d %cm\n", hour, newTimeOfDay);

    return 0;
}