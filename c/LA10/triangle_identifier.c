#include <stdio.h>

int main() 
{
    int angle1, angle2, angle3;

    printf("Enter the three angles of the triangle:\n");
    scanf("%d %d %d", &angle1, &angle2, &angle3);

    if (angle1 + angle2 + angle3 == 180) {
        if (angle1 == angle2 && angle2 == angle3) {
            printf("Equilateral triangle\n");
        } else if (angle1 == angle2 || angle2 == angle3 || angle1 == angle3) {
            printf("Isosceles triangle\n");
        } else {
            printf("Scalene triangle\n");
        }
    } else {
        printf("Invalid triangle\n");
    }

    return 0;
}

