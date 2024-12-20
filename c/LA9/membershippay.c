#include <stdio.h>

int main() 
{
    char membership;
    int age;

    printf("Enter membership (R, V, P): ");
    scanf(" %c", &membership); 

    printf("Enter age: ");
    scanf("%d", &age);

    double price;

    if (membership == 'R' || membership == 'r') {
        if (age < 18) {
            price = 50.0;
        } else if (age >= 18 && age <= 64) {
            price = 100.0;
        } else {
            price = 75.0;
        }
    } else if (membership == 'V'|| membership == 'v') {
        if (age < 18) {
            price = 75.0;
        } else if (age >= 18 && age <= 64) {
            price = 150.0;
        } else {
            price = 112.5;
        }
    } else if (membership == 'P' || membership == 'p') {
        if (age < 18) {
            price = 100.0;
        } else if (age >= 18 && age <= 64) {
            price = 200.0;
        } else {
            price = 150.0;
        }
    } else {
        printf("Invalid membership status \n");
        return 1; 
    }

    printf("Price = $%.2lf\n", price);

    return 0;
}