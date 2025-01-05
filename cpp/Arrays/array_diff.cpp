/*
Array Difference
by CodeChum Admin

Write a program that prompts the user to enter 5 integers and stores them in an array. Calculate the difference of all the elements in the array. Finally, print the resulting difference.
Sample Output 1

Enter 5 integers:
1
2
3
4
5
Difference of all elements: -15
*/

//main.cpp
#include <iostream>

using namespace std;

int main() {
  int n [5];
  int sum = 0;

  cout << "Enter 5 integers:\n";
  for (int i = 0; i < 5; i++) {
    cin >> n [i];
    sum += n [i]; 
  }

  int difference = -sum; 

  cout << "Difference of all elements: " << difference << endl;

  return 0;
}