#include <stdio.h>

int main() 
{
    int x, y;

    printf("Enter x and y: ");
    scanf("%d %d", &x, &y);

    if (x > 0 && y > 0) {
        printf("Quadrant I\n");
    } else if (x < 0 && y > 0) {
        printf("Quadrant II\n");
    } else if (x < 0 && y < 0) {
        printf("Quadrant III\n");
    } else if (x > 0 && y < 0) {
        printf("Quadrant IV\n");
    } else if (x == 0 && y == 0) {
        printf("origin\n");
    } else if (x == 0) {
        printf("y-axis\n");
    } else if (y == 0) {
        printf("x-axis\n");
    }
    return 0;
}