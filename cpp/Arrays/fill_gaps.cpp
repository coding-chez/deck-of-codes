/*
Fill In the Gaps
by CodeChum Admin

The foundation for our building is slowly collapsing. We need to reinforce it by filling in the gaps! Our foundation is made up of a bunch of different integers, with values that could still be filled in between.

 

Your job is to output the values to be filled in between the existing ones. If there are no gaps, output "(none)" instead

 

Assume that the given elements are in ascending order.

Sample Output 1

Enter n: 5
Enter 5 elements: 3 5 7 8 10
Filling in gaps = 4 6 9
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

  cout << "Filling in gaps = ";
  int gapCount = 0; 

  if (n > 1) { 
    for (int i = 1; i < n; i++) {
      for (int j = elements[i - 1] + 1; j < elements[i]; j++) {
        cout << j << " ";
        gapCount++;
      }
    }
  }

  if (gapCount == 0) { 
    cout << "(none)";
  }

  cout << endl;

  return 0;
}