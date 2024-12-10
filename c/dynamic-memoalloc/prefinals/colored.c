#include <stdio.h>

void setConsoleColor(int color) {
    printf("\033[0;%dm", color);
}

void printSquare(int size, int color) {
    setConsoleColor(color);

    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            printf("[]");
        }
        printf("\n");
    }

    setConsoleColor(0);  // Reset console color to default
}

int main() {
    int size, color;

    printf("Enter the size of the square: ");
    scanf("%d", &size);

    printf("Enter the color (0-7) for the square: ");
    scanf("%d", &color);

    if (color < 0 || color > 7) {
        printf("Invalid color code. Using default color (0).\n");
        color = 0;
    }

    printSquare(size, color);

    return 0;
}