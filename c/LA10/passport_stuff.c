#include <stdio.h>

int main() 
{
    int age;
    char passport;

    printf("Enter your age: ");
    scanf("%d", &age);

    printf("Do you have a valid passport? (Y/N): ");
    scanf(" %c", &passport);

    if ((age >= 18) && (passport == 'Y' || passport == 'y')) {
        printf("Eligible to travel.\n");
    } else if ((age < 18) && (passport == 'Y' || passport == 'y')) {
        printf("Travel with guardian.\n");
    } else if ((age >= 18) && (passport == 'N' || passport == 'n')) {
        printf("Apply for a passport.\n");
    } else if ((age < 18) && (passport == 'N' || passport == 'n')) {
        printf("Not eligible to travel.\n");
    } else {
        printf("Invalid input.\n");
    }

    return 0;
}

