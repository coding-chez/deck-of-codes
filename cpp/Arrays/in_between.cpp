/*
In Between
by CodeChum Admin

Hello there! I am a robot that was made to read and analyze numbers of all sorts. I’ve been doing simple operations for a while now and I think I’m ready to handle more difficult ones.

 

I want you to program to be able to analyze an array of integers and a value of x and y, and output those numbers in the array that are in between the values of x and y inclusive in the order from first input to last.

 

If there are no such numbers, output (none) instead.

Sample Output 1

Enter n: 5
Enter 5 elements: 15 28 64 75 51
Values of x and y: 50 90
Numbers in between = 64 75 51
*/

//main.cpp
#include <iostream>

using namespace std;

int main (){
    int n, x, y;
    int count = 0;
    
    cout << "Enter n: ";
    cin >> n;
    
    int num [n];
    
    cout << "Enter " << n << " elements: ";
    for (int i = 0; i < n; i++){
        cin >> num[i];
    }
    cout << "Values of x and y: ";
    cin >> x >> y;

    cout << "Numbers in between = ";

    for (int i = 0; i < n; i++) {
        if (num [i] >= x && num [i] <= y) {
        cout << num [i] << " ";
        count++; 
        }
    }
    if (count == 0) { 
    cout << "(none)";
  }

  cout << endl;

  return 0;
}