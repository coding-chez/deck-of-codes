/*
Maximum Value in Array
by CodeChum Admin

Write a program that takes integers in an array. Ask the user to enter 7 integers and stores them in the given array. It should then find the maximum value in the array. Finally, print the maximum value.
Sample Output 1

Enter 7 integers:
1
2
3
4
5
6
7
The maximum value is: 7
*/

//main.cpp
#include <iostream>

using namespace std;

int main() {
  int numbers[7];
  int maxVal = 0; 

  cout << "Enter 7 integers:\n";
  for (int i = 0; i < 7; i++) {
    cin >> numbers[i];
    if (numbers[i] > maxVal) {
      maxVal = numbers[i];
    }
  }

  cout << "The maximum value is: " << maxVal << endl;

  return 0;
}