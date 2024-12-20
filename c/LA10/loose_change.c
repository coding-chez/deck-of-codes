#include <stdio.h>

int main() 
{
    int total, payment, change, count;

    printf("Enter total: ");
    scanf("%d", &total);

    printf("Enter payment: ");
    scanf("%d", &payment);

    change = payment - total;

    if (change < 0) {
        printf("Aicham! You have to pay properly.\n");
    } else {
        if (change == 0) {
            printf("I receive exact amount.\n");
        } else {
            printf("Your change is %d. Here's your change:\n", change);

            if (change >= 1000) {
                count = change / 1000;
                printf("%d 1000-peso bill\n", count);
                change %= 1000;
            }

            if (change >= 500) {
                count = change / 500;
                printf("%d 500-peso bill\n", count);
                change %= 500;
            }

            if (change >= 200) {
                count = change / 200;
                printf("%d 200-peso bill\n", count);
                change %= 200;
            }

            if (change >= 100) {
                count = change / 100;
                printf("%d 100-peso bill\n", count);
                change %= 100;
            }

            if (change >= 50) {
                count = change / 50;
                printf("%d 50-peso bill\n", count);
                change %= 50;
            }

            if (change >= 20) {
                count = change / 20;
                printf("%d 20-peso coin\n", count);
                change %= 20;
            }

            if (change >= 10) {
                count = change / 10;
                printf("%d 10-peso coin\n", count);
                change %= 10;
            }

            if (change >= 5) {
                count = change / 5;
                printf("%d 5-peso coin\n", count);
                change %= 5;
            }

            if (change >= 1) {
                count = change / 1;
                printf("%d 1-peso coin\n", count);
            }
        }
    }

    return 0;
}

/*

USING LOOP

#include <stdio.h>

int main() 
{
    int total, payment, change, bills, coins;

    printf("Enter total: ");
    scanf("%d", &total);

    printf("Enter payment: ");
    scanf("%d", &payment);

    change = payment - total;

    if (change < 0) {
        printf("Aicham! You have to pay properly.\n");
    } else if (change == 0) {
        printf("I receive exact amount.\n");
    } else {
        printf("Your change is %d. Here's your change:\n", change);

        bills[] = {1000, 500, 200, 100, 50};
        for (int i = 0; i < 5; ++i) {
            int count = change / bills[i];
            if (count > 0) {
                printf("%d %d-peso bill\n", count, bills[i]);
                change %= bills[i];
            }
        }
        
        coins[] = {20, 10, 5, 1};
        for (int i = 0; i < 4; ++i) {
            int count = change / coins[i];
            if (count > 0) {
                printf("%d %d-peso coin\n", count, coins[i]);
                change %= coins[i];
            }
        }
    }

    return 0;
}
*/

