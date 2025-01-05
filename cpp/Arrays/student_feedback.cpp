/*
Analyzing Student Feedback
by CodeChum Admin

As part of an investigatory project, a survey was conducted to gather feedback from students about their satisfaction with the current state of the school. The survey used a rating system that allowed students to rate the school from 1 to 10. However, the number of people who answered each rating is unknown, making it difficult to analyze the feedback.
 
Your task is to design a program that takes the input of the ratings from the survey participants and the rating to be counted and outputs the frequency of the specified rating.

Sample Output 1

Enter n: 5
Enter 5 elements: 2 3 2 7 9
Rating to count: 2
FREQUENCY = 2
*/

//main.cpp
#include <iostream>

using namespace std;

int main() {
  int n, RTC;
  cout << "Enter n: ";
  cin >> n;

  int rating [n];
  cout << "Enter " << n << " elements: ";
  for (int i = 0; i < n; i++) {
    cin >> rating [i];
  }

  cout << "Rating to count: ";
  cin >> RTC;

  int frequency = 0;
  for (int i = 0; i < n; i++) {
    if (rating [i] == RTC) {
      frequency++;
    }
  }

  cout << "FREQUENCY = " << frequency << endl;

  return 0;
}