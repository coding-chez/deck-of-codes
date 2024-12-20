#include <stdio.h>

int main() 
{
    int programmerAge, teacherAge, peterAge, babyAge;

    printf("Enter the Programmer's age: ");
    scanf("%d", &programmerAge);

    printf("Enter the teacher's age: ");
    scanf("%d", &teacherAge);

    printf("Enter Peter's age: ");
    scanf("%d", &peterAge);

    babyAge = (programmerAge * teacherAge) / peterAge + 1;

    printf("Baby's age = %d\n", babyAge);

    return 0;
}