/*
Count of Even Elements in an Array
by CodeChum Admin

Write a program that prompts the user to enter 12 integers and stores them in the given array. Count the number of even elements in the array. Finally, print the final count of the even elements.
Sample Output 1

Enter 12 integers:
1
2
3
4
5
6
7
8
9
10
11
12
Number of even elements: 6
*/

//main.cpp


#include <iostream>

using namespace std;

int main (){
    int num [12];
    int evenCount = 0;

  cout << "Enter 12 integers:\n";

  for (int i = 0; i < 12; i++) {
    cin >> num [i];
  }

  for (int i = 0; i < 12; i++) {
    if (num [i] % 2 == 0) {
      evenCount++;
    }
  }

  cout << "Number of even elements: " << evenCount << endl;

  return 0;
}