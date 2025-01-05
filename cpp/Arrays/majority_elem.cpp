/*
Majority Element
by CodeChum Admin

Given an array of size n, find the majority element. The majority element is the element that appears more than n/2 times.
Sample Output 1

Enter the size of the array: 5
Enter the elements of the array separated by space: 1 2 3 4 5
No majority element found
Sample Output 2

Enter the size of the array: 6
Enter the elements of the array separated by space: 1 2 2 2 2 2
The majority element is 2
*/

//main.cpp

#include <iostream>

using namespace std;

int main (){
    int n;
    cout << "Enter the size of the array: ";
    cin >> n;
    
    int arr [n];
    cout << "Enter the elements of the array separated by space: ";
    for (int i = 0; i < n; i++){
        cin >> arr [i];
    }
    
    int majorityElement = -1;
    int count = 0;
    
    for (int i = 0; i < n; i++){
        if (count == 0){
            majorityElement = arr[i];
            count = 1;
        } else if (arr[i] == majorityElement){
            count++;
        } else {
            count--;
        }
    }
    
    count = 0;
    
    for (int i = 0; i < n; i++){
        if (arr [i] == majorityElement){
            count++;
        }
    }
    
    if (count > n / 2) {
        cout << "The majority element is " << majorityElement << endl;
    } else {
        cout << "No majority element found" << endl;
    }

  return 0;
}