#include <stdio.h>

int main() 
{
    char package;
    int cubicMeters;
	float payment;
	
    printf("Enter package: ");
    scanf(" %c", &package);    

    printf("Enter cubic meter used: ");
    scanf("%d", &cubicMeters);

    switch (package) 
	{
        case 'A':
            payment = 250.00 + 9.50 * cubicMeters;
            break;
        case 'B':
            if (cubicMeters <= 20) {
                payment = 400.00;
            } else {
                payment = 400.00 + 11.25 * (cubicMeters - 20);
            }
            break;
        case 'C':
            if (cubicMeters < 12) {
                payment = 300.00;
            } else if (cubicMeters >= 12 && cubicMeters <= 25) {
                payment = 525.00;
            } else {
                payment = 750.00;
            }
            break;
    }

    printf("Payment: %.2f\n", payment);

    return 0;
}