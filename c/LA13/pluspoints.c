/*
Plus Points
by Jay Vince Serato

Given a number n, output a huge plus sign of n width and n height composed of vertical bars (|) in the vertical middle, and dashes (-) in the horizontal middle. If the n is even, the middle shall be at the first (left or upper) middle. In the very middle, it shall be the plus (+) sign.
Sample Output 1

Enter num: 5
  |
  |
--+--
  |
  |
*/

#include <stdio.h>
#include <math.h>
int main()
{
    int num;
    
    printf("Enter num: ");
    scanf("%d", &num);
    
    int mid = ceil (num / 2.0);
   
    for (int i = 1; i <= num;i++){
        for(int j = 1; j <= num;j++){
            if(i == mid && j == mid){
                printf("+");
            } else if(i == mid){
                printf("-");
            } else if(j == mid){
                printf("|");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
}