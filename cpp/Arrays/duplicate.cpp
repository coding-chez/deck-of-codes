/*
Array Duplicate Check
by CodeChum Admin

Write a program that asks the user to enter 10 integers and stores them in the given array. Check if there are any duplicate elements in the array. If there are duplicates, it should print "Duplicate found", otherwise print "No duplicates".
Sample Output 1

Enter 10 integers:
1
2
3
4
5
6
1
7
8
9
*/

//main.cpp
#include <iostream>

using namespace std;

int main() {
  int n [10];
  int duplicateCount = 0;

  cout << "Enter 10 integers:\n";
  for (int i = 0; i < 10; i++) {
    cin >> n [i];
  }

  for (int i = 0; i < 10; i++) {
    for (int j = i + 1; j < 10; j++) {
      if (n [i] == n [j]) {
        duplicateCount++; 
        break; 
      }
    }
  }

  if (duplicateCount > 0) {
    cout << "Duplicate found" << endl;
  } else {
    cout << "No duplicates" << endl;
  }

  return 0;
}