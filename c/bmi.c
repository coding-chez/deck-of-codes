#include <stdio.h>
#include <math.h>

int main() {
    float weight, height, bmi;

    printf("Weight in kilos: ");
    scanf("%f", &weight);

    printf("Height in meters: ");
    scanf("%f", &height);

    bmi = weight / pow(height, 2);

    printf("Your BMI is %.1f.\n", bmi);

    return 0;
}

