#include <stdio.h>

int main() 
{
    char team1[100], team2[100];
    int score1, score2;

    printf("Team 1 Name: ");
    scanf("%s", team1);

    printf("Team 2 Name: ");
    scanf("%s", team2);

    printf("Team 1 Score: ");
    scanf("%d", &score1);

    printf("Team 2 Score: ");
    scanf("%d", &score2);

    if (score1 > score2) {
        printf("%s wins %d-%d\n", team1, score1, score2);
    } else if (score2 > score1) {
        printf("%s wins %d-%d\n", team2, score2, score1);
    } else {
        printf("Game tied!\n");
    }

    return 0;
}
