/*
Enter your PIN
by Jay Vince Serato

To secure the access to your phone, you must provide your PIN code at the time of your purchase.

After which, you will be prompted to enter your 4-digit PIN. If there has been three incorrect attempts, the phone will be locked out temporarily for 30 seconds before the user can attempt again. If the user still fails after another three attempts, the lock out duration will increase to an additional 15 seconds, so a total of 45 seconds on the second lock out. This will go on until the user successfully enters their PIN code.

Implement the above system by doing the following:
Ask for the initial 4-digit PIN.
Ask for the PIN continuously until user enters initial PIN.
If the PIN is inputted successfully, output "Phone unlocked." and that will end the program.
Otherwise, output "PIN is incorrect." and prompt for the PIN again.
If there has been three (3) failed attempts, output "You've been locked out for n seconds." where n is initially 30 at the first lock out and will add 15 seconds for each of the following lock outs. On a new line, print out the numbers from n to 0.
Go back to Step 2.
Sample Output
Enter initial PIN: 0000
Enter your PIN: 1234
PIN is incorrect.
Enter your PIN: 1884
PIN is incorrect.
Enter your PIN: 6294
PIN is incorrect.
You've been locked out for 30 seconds.
30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
Enter your PIN: 6548
PIN is incorrect.
Enter your PIN: 6591
PIN is incorrect.
Enter your PIN: 0000
Phone unlocked.
*/
#include <stdio.h>

int main() 
{
    int initial, enteredP, attempts = 0, lockoutTime = 30;

    printf("Enter initial PIN: ");
    scanf("%d", &initial);

    do {
        printf("Enter your PIN: ");
        scanf("%d", &enteredP);

        if (enteredP != initial) {
            printf("PIN is incorrect.\n");
            attempts++;
        }
            if (attempts == 3) {
                printf("You've been locked out for %d seconds.\n", lockoutTime);
                for (int i = lockoutTime; i >= 0; i--) {
                    printf("%d ", i);
                }
                printf("\n");
                attempts = 0;
                lockoutTime += 15;
            }
    } while (initial != enteredP);
    printf ("Phone unlocked.");

    return 0;
}