/*
Finding a Negative Number
by CodeChum Admin

Write a program that asks the user to enter 8 integers and stores them in the given array. Check if there are any negative numbers in the array. If there are negative numbers present, it should print "Negative number found", otherwise print "No negative numbers".
Sample Output 1

Enter 8 integers:
1
2
3
4
5
6
7
-1
Negative number found
Sample Output 2

Enter 8 integers:
1
2
3
4
5
6
7
8
No negative numbers
*/

//main.cpp

#include <iostream>

using namespace std;

int main (){
    int num [8];
    int negativeCount = 0; 

  cout << "Enter 8 integers:\n";
  for (int i = 0; i < 8; i++) {
    cin >> num [i];
    if (num [i] < 0) {
      negativeCount++; 
    }
  }

  if (negativeCount > 0) { 
    cout << "Negative number found" << endl;
  } else {
    cout << "No negative numbers" << endl;
  }

  return 0;
}