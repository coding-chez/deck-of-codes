#include <stdio.h>

int main() 
{
    
    char membershipStatus [20];
    int age;
    float price;

    printf("Enter your membership status (Regular, VIP, or Premium): ");
    scanf("%s", membershipStatus);
    printf("Enter your age: ");
    scanf("%d", &age);

    if (membershipStatus, "Regular") {
        if (age < 18) {
            price = 50.0;
        } else if (age >= 18 && age <= 64) {
            price = 100.0;
        } else {
            price = 75.0;
        }
    } else if (membershipStatus, "VIP") {
        if (age < 18) {
            price = 75.0;
        } else if (age >= 18 && age <= 64) {
            price = 150.0;
        } else {
            price = 112.5;
        }
    } else if (membershipStatus, "Premium") {
        if (age < 18) {
            price = 100.0;
        } else if (age >= 18 && age <= 64) {
            price = 200.0;
        } else {
            price = 150.0;
        }
    } else {
        printf("Invalid membership status entered.\n");
        return 1; 
    }

    printf("Price: $%.2f\n", price);

    return 0; 
}
