/*
Five's Minimum
by CodeChum Admin

Write a program that asks the user to enter five integers. Find the minimum value among the elements then print the minimum value.
Sample Output 1

Enter 5 integers:
1
2
3
4
5
The minimum value is: 1
*/

//main.cpp

#include <iostream>

using namespace std;

int main() {
  int n [5];
  int minVal;

  cout << "Enter 5 integers:\n";
  for (int i = 0; i < 5; i++) {
    cin >> n [i];
  }

  minVal = n [0];

  for (int i = 1; i < 5; i++) {
    if (n [i] < minVal) {
      minVal = n [i];
    }
  }

  cout << "The minimum value is: " << minVal << endl;

  return 0;
}