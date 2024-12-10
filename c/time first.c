#include <stdio.h>

int main() {
    int minutes, hours, remainingMinutes;

    printf("Enter time in minutes: ");
    scanf("%d", &minutes);

    hours = minutes / 60;
    remainingMinutes = minutes % 60;

    printf("%d hour", hours);

    if (hours != 1, hours !=0) {
        printf("/s");
    }

    printf(" and %d minute", remainingMinutes);

    if (minutes != 1) {
        printf("/s");
    }
    return 0;
}
