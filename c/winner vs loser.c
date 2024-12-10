#include <stdio.h>
#include <string.h>

int main() {
    char team1Name[100], team2Name[100];
    int team1Score, team2Score;

    printf("Team 1 Name: ");
    scanf("%s", team1Name);

    printf("Team 2 Name: ");
    scanf("%s", team2Name);

    printf("Team 1 Score: ");
    scanf("%d", &team1Score);

    printf("Team 2 Score: ");
    scanf("%d", &team2Score);

    if (team1Score > team2Score) {
        printf("%s wins %d-%d\n", team1Name, team1Score, team2Score);
    } else if (team2Score > team1Score) {
        printf("%s wins %d-%d\n", team2Name, team2Score, team1Score);
    } else {
        printf("Game tied\n");
    }

    return 0;
}
