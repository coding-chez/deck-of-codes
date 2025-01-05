/*
Array Square
by CodeChum Admin

Write a program that prompts the user to enter 5 integers and stores them in an array. Calculate and print the square of all the elements in the array separated with a space.
Sample Output 1

Enter 5 integers:
1
2
3
4
5
Square of all elements:
1 4 9 16 25
*/

//main.cpp
#include <iostream>

using namespace std;

int main() {
  int numbers[5];

  cout << "Enter 5 integers:\n";
  for (int i = 0; i < 5; i++) {
    cin >> numbers[i];
  }

  cout << "Square of all elements:\n";
  for (int i = 0; i < 5; i++) {
    cout << numbers[i] * numbers[i] << " "; 
  }
  cout << endl; 

  return 0;
}