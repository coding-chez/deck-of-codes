#include <stdio.h>

int main() {
    double totalAmount, discountAmount;

    printf("Enter the total purchase amount: $");
    scanf("%lf", &totalAmount);

    if (totalAmount >= 500) {
        discountAmount = totalAmount * 0.20;  // 20% discount
    } else if (totalAmount >= 200) {
        discountAmount = totalAmount * 0.10;  // 10% discount
    } else {
        discountAmount = 0;  // No discount
    }

    printf("Total purchase amount: $%.2lf\n", totalAmount);
    printf("Discount amount: $%.2lf\n", discountAmount);

    return 0;
}
