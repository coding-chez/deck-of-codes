#include <stdio.h>

int main() 
{
    int num;

    printf("Enter a number from 1 to 100: ");
    scanf("%d", &num);

    if (num >= 1 && num <= 100) {
    	if (num >= 100) printf ("one hundred");
        else if (num >= 90) printf("ninety");
        else if (num >= 80) printf("eighty");
        else if (num >= 70) printf("seventy");
        else if (num >= 60) printf("sixty");
        else if (num >= 50) printf("fifty");
        else if (num >= 40) printf("forty");
        else if (num >= 30) printf("thirty");
        else if (num >= 20) {
            printf("twenty");
        }

        if (num % 10 != 0) {
            if (num >= 20) {
                switch (num % 10) {
                    case 1: printf("-one"); break;
                    case 2: printf("-two"); break;
                    case 3: printf("-three"); break;
                    case 4: printf("-four"); break;
                    case 5: printf("-five"); break;
                    case 6: printf("-six"); break;
                    case 7: printf("-seven"); break;
                    case 8: printf("-eight"); break;
                    case 9: printf("-nine"); break;
                }
            } else {
                switch (num) {
                    case 1: printf("one"); break;
                    case 2: printf("two"); break;
                    case 3: printf("three"); break;
                    case 4: printf("four"); break;
                    case 5: printf("five"); break;
                    case 6: printf("six"); break;
                    case 7: printf("seven"); break;
                    case 8: printf("eight"); break;
                    case 9: printf("nine"); break;
                    case 10: printf("ten"); break;
                    case 11: printf("eleven"); break;
                    case 12: printf("twelve"); break;
                    case 13: printf("thirteen"); break;
                    case 14: printf("fourteen"); break;
                    case 15: printf("fifteen"); break;
                    case 16: printf("sixteen"); break;
                    case 17: printf("seventeen"); break;
                    case 18: printf("eighteen"); break;
                    case 19: printf("nineteen"); break;
                }
            }
        }

        printf("\n");
    } else {
        printf("Invalid input\n");
    }

    return 0;
}


/*

FIRST TRIAL (DID NOT PROCEED KAY IT MAY TOOK SO LONG)

#include <stdio.h>

int main() 
{
    int num;

    printf("Enter a number from 1 to 100: ");
    scanf("%d", &num);

    if (num >= 1 && num <= 100) {
        if (num == 1) printf("one\n");
        else if (num == 2) printf("two\n");
        else if (num == 3) printf("three\n");
        else if (num == 4) printf("four\n");
        else if (num == 5) printf("five\n");
        else if (num == 6) printf("six\n");
        else if (num == 7) printf("seven\n");
        else if (num == 8) printf("eight\n");
        else if (num == 9) printf("nine\n");
        else if (num == 10) printf("ten\n");
        else if (num == 11) printf("eleven\n");
        else if (num == 12) printf("twelve\n");
        else if (num == 13) printf("thirteen\n");
        else if (num == 14) printf("fourteen\n");
        else if (num == 15) printf("fifteen\n");
        else if (num == 16) printf("sixteen\n");
        else if (num == 17) printf("seventeen\n");
        else if (num == 18) printf("eighteen\n");
        else if (num == 19) printf("nineteen\n");
        else if (num == 20) printf("twenty\n");
        else if (num == 21) printf ("twenty-one\n");
    
    } 

    return 0;
}
*/
