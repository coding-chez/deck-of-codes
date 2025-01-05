/*
Frequent Flyer Miles
by CodeChum Admin

Hello! My name is Daisy and I work for Philippine Airlines. As our gift for passengers who frequently fly with us, we’ve decided to pick someone who flew with us the most in the last few months or so. In order to do that, we need to be able to identify that one lucky person among all of the other frequent flyers.

 

Your job would be to create a program that would print out the most frequent number that pops up in the system. Since we only choose that one lucky flyer, if there is more than one most frequent number, print (none) instead.

 

Assume that the number inputted is within 1 to 99, as we only get to consider among 99 customers.

Sample Output 1

Enter n: 8
Enter 8 elements: 26 25 54 47 1 26 4 26
Lucky Winner = 26
*/

//main.cpp

#include <iostream>

using namespace std;

int main() {
  int n;
  cout << "Enter n: ";
  cin >> n;

  int elements[100]; 
  cout << "Enter " << n << " elements: ";
  for (int i = 0; i < n; i++) {
    cin >> elements[i];
  }

  int maxCount = 0;
  int luckyWinner = -1; 
  int count[100] = {0}; 
  
  for (int i = 0; i < n; i++) {
    count[elements[i]]++; 
  }

  for (int i = 1; i <= 99; i++) {
    if (count[i] > maxCount) {
      maxCount = count[i];
      luckyWinner = i;
    } else if (count[i] == maxCount && luckyWinner != -1) {
      luckyWinner = -1; 
    }
  }

  if (luckyWinner != -1) {
    cout << "Lucky Winner = " << luckyWinner << endl;
  } else {
    cout << "Lucky Winner = (none)" << endl;
  }

  return 0;
}