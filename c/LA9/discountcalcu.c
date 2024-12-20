#include <stdio.h>

int main() 
{
    double purchaseAmount, discount = 0.0;

    printf("Enter purchase amount: ");
    scanf("%lf", &purchaseAmount);

    if (purchaseAmount >= 500) {
        discount = purchaseAmount * 0.20;
    } else if (purchaseAmount > 200) {
        discount = purchaseAmount * 0.10;
    }

    double discountedPrice = purchaseAmount - discount;

    printf("Discount = %.2lf\n", discount);
    printf("Total = %.2lf\n", discountedPrice);

    return 0;
}
