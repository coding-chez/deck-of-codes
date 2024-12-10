#include <stdio.h>

int checkLeapYear(int year) {
    if ((year % 400 == 0) || (year % 4 == 0 && year % 100 != 0))
        return 1;
    else
        return 0;
}

int main() {
    int startYear, endYear;

    printf("Start: ");
    scanf("%d", &startYear);

    printf("End: ");
    scanf("%d", &endYear);

    printf("Leap years from %d to %d:\n", startYear, endYear);
    for (int i = startYear; i <= endYear; i++) {
        if (checkLeapYear(i))
            printf("%d ", i);
    }

    printf("\nNon-leap years from %d to %d:\n", startYear, endYear);
    for (int i = startYear; i <= endYear; i++) {
        if (!checkLeapYear(i))
            printf("%d ", i);
    }

    return 0;
}