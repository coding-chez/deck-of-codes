/*
Second Largest Element
by CodeChum Admin

Write a program that asks for an integer N and asks for N number of elements, then store them in an array. Find the second largest element in the array and print the number.
Sample Output 1

Enter the number of elements: 5
Enter elements: 10 20 30 40 50
The second largest element is 40
*/

//main.cpp
#include <iostream>

using namespace std;

int main() {
  int N;
  cout << "Enter the number of elements: ";
  cin >> N;

  int num [N];
  cout << "Enter elements: ";
  for (int i = 0; i < N; i++) {
    cin >> num [i];
  }

  int largest = num [0];
  int sL = num [1];

  if (sL > largest) {
    swap(largest, sL);
  }
  

  for (int i = 2; i < N; i++) {
    if (num [i] > largest) {
      sL = largest;
      largest = num [i];
    } else if (num [i] > sL && num [i] != largest) {
      sL = num [i];
    }
  }

  cout << "The second largest element is " << sL << endl;

  return 0;
}