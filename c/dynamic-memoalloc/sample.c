#include <stdio.h>
#include <stdlib.h>

void create (int* arr, int size);
void display (int* arr, int size);
// int highest (int * arr, int size);
// void resize (int* arr, int newSize);
void add (int* arr, int old, int size);

int main (){
    int size, item;
    int *arr;
    int r, old;
    printf ("Enter the size of the array: ");
    scanf ("%d", &size);

    arr = (int*) malloc (size*sizeof(int));

    if (arr == NULL){
        printf ("Memory Allocation Failed!");
    } else {
        create (arr, size);
    }
    display (arr, size);
    // printf ("\nHighest = %d\n", highest(arr,size));
    old = size;
    size = size * 2;
    arr = realloc (arr, size*sizeof(int));
    add (arr, old, size);
    display (arr,size);
    free (arr);
    return 0;
}

void create (int* arr, int size){
    int ctr; 
    for (ctr = 0; ctr < size; ctr++){
        printf ("arr[%d]: ", ctr);
        scanf ("%d", (arr+ctr));
    }
    return;
}

void display (int* arr, int size){
    int ctr;
    if (arr == NULL){
        printf ("No Elements Found!");
    } else {
        for (ctr = 0; ctr < size; ctr++){
            printf ("\narr[%d]: %d", ctr,*(arr+ctr));
        }
    }
}

// int highest (int * arr, int size){
//     int high = *arr;
//     for (ctr = 1; ctr < size; ctr++){
//         if (arr+ctr) > high{
//              high =  
//         }
       
//     }
// }

void add (int* arr, int old, int size){
    int ctr;
    for (ctr = old; ctr < size; ctr++){
        printf ("\narr[%d]: ",ctr);
        scanf ("%d", (arr + ctr));
    }
    return;
}