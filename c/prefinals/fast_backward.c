/*
#include <stdio.h>

int main()
{
    int time, hoursToDeduct;
    char timeOfDay, newTimeOfDay;

    printf("Enter time: ");
    scanf("%d %c", &time, &timeOfDay);

    printf("Hours to deduct: ");
    scanf("%d", &hoursToDeduct);

    if ((timeOfDay == 'a' || timeOfDay == 'A') && time == 12) {
        time = 0;
    }

    if (timeOfDay == 'p' || timeOfDay == 'P') {
        time += 12;
    }

    time = (time - hoursToDeduct + 2400) % 24;

    newTimeOfDay = (time < 12) ? 'a' : 'p';

    if (time > 12) {
        time -= 12;
    }

    if (time == 0) {
        time = 12;
    }

    if (time == 12 && (timeOfDay == 'p' || timeOfDay == 'P')) {
        newTimeOfDay = 'a';
    }

    printf("%d %cm\n", time, newTimeOfDay);

    return 0;
}
*/

#include <stdio.h>

int main()
{
    int time, hoursToDeduct;
    char timeOfDay, newTimeOfDay;

    printf("Enter time: ");
    scanf("%d %c", &time, &timeOfDay);

    printf("Hours to deduct: ");
    scanf("%d", &hoursToDeduct);

    if ((timeOfDay == 'a' || timeOfDay == 'A') && time == 12) {
        time = 0;
    }

    if (timeOfDay == 'p' || timeOfDay == 'P') {
        if (time != 12) { 
            time += 12;
        }
    }

    hoursToDeduct %= 24;

    time = (time - hoursToDeduct + 24) % 24;

    newTimeOfDay = (time < 12) ? 'a' : 'p';

    if (time > 12) {
        time -= 12;
    }

    if (time == 0) {
        time = 12;
    }

    printf("%d %cm\n", time, newTimeOfDay);

    return 0;
}


 