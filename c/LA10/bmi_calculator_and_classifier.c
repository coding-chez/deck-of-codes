#include <stdio.h>

int main() 
{
    double weight, height, bmi;

    printf("Weight in kilos: ");
    scanf("%lf", &weight);

    printf("Height in meters: ");
    scanf("%lf", &height);

    bmi = weight / (height * height);

    printf("Your BMI is %.1lf.\n", bmi);

    if (bmi < 18.5) {
        printf("Underweight\n");
        if (bmi < 16)
            printf("Severely Underweight\n");
        else
            printf("Mild to Moderately Underweight\n");
    } else if (bmi >= 18.5 && bmi < 25.0) {
        printf("Normal Weight\n");
    } else if (bmi >= 25.0 && bmi < 30.0) {
        printf("Overweight\n");
        if (bmi < 27.5)
            printf("Pre-Obese\n");
        else
            printf("Obese Class I\n");
    } else if (bmi >= 30.0) {
        printf("Obese\n");
        if (bmi < 35.0)
            printf("Obese Class II\n");
        else
            printf("Obese Class III\n");
    }

    return 0;
}

