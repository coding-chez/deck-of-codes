#include <stdio.h>
#include <math.h>

int main() 
{
    int x1, y1, x2, y2;
    double distance;

    printf("Point 1 x: ");
    scanf("%d", &x1);
    printf("Point 1 y: ");
    scanf("%d", &y1);

    printf("Point 2 x: ");
    scanf("%d", &x2);
    printf("Point 2 y: ");
    scanf("%d", &y2);

    distance = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));

    printf("Distance = %.2lf\n", distance);

    return 0;
}
