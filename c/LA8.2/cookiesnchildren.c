#include <stdio.h>

int main() 
{
    int numCookies, numChildren;

    printf("Enter number of cookies: ");
    scanf("%d", &numCookies);
    printf("Enter number of children: ");
    scanf("%d", &numChildren);

    int cookiesPerChild = numCookies / numChildren;

    int leftoverCookies = numCookies % numChildren;

    printf("Each child will have %d cookies and there will be %d leftover\n", cookiesPerChild, leftoverCookies);

    return 0;
}