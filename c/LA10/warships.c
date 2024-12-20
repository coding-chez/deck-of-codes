#include <stdio.h>

int main() 
{
    char ship;
    int location;

    printf("Enter ship: ");
    scanf(" %c", &ship);  
    printf("Enter location: ");
    scanf("%d", &location);

    if (ship == 'A' || ship == 'a') {
        printf("Aircraft Carrier");
    } else if (ship == 'B' || ship == 'b') {
        printf("Battleship");
    } else if (ship == 'C' || ship == 'c') {
        printf("Cruiser");
    } else if (ship == 'D' || ship == 'd') {
        printf("Destroyer");
    } else {
        printf ("Unknown ship");
    }

    if (location == 12) {
        printf(" ahead");
    } else if (location >= 1 && location <= 2) {
        printf(" at starboard bow");
    } else if (location == 3 || location == 9) {
        printf(" abeam");
    } else if (location >= 4 && location <= 5) {
        printf(" at starboard quarter");
    } else if (location == 6) {
        printf(" astern");
    } else if (location >= 7 && location <= 8) {
        printf(" at port quarter");
    } else if (location == 10 || location == 11) {
        printf(" at port bow");
    }

    printf("\n");

    return 0;
}

