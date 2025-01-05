#include <iostream>
#include <stack>
#include <vector>
#include <limits.h>

using namespace std;


bool isValid (const vector <int> & preorder){
    stack <int> stk;
    int lower = INT_MIN;
    
    for (int num : preorder){
        if(num < lower){
            return false;
        }
        
        while (!stk.empty() && num > stk.top()){
            lower = stk.top();
            stk.pop();
        }
        
        stk.push(num);
    }
    return true;
    
}

int main (){
    int num;
    
    cout << "Enter number of elements: ";
    cin >> num;
    
    vector<int>preorder(num);
    
    cout << "Enter preorder: ";
    for (int i = 0; i < num; i++){
        cin >> preorder[i];
    }
    
    if (isValid(preorder)){
        cout << "VALID" << endl;
    } else {
        cout << "INVALID" << endl;
    }
}