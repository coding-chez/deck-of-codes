#include <stdio.h>

  
int main ()
{
    float pricePerliter, totalAmount, tenderPayment, change;

    printf ("Welcome to the gas station!\n");
    printf ("Enter the price per liter of gas: ");
    scanf ("%f", &pricePerliter);

    float liters;
    printf ("How many liters would you want? ");
    scanf ("%f", &liters);

    totalAmount = pricePerliter * liters;

    printf ("Your total is P%.2f.\n", totalAmount);
    printf ("Enter amount to pay: ");
    scanf ("%f", &tenderPayment);

    change = tenderPayment - totalAmount;

    printf ("Your change is P%.2f. Drive safe! \n", change);

    return 0;
}