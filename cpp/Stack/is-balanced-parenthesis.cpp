#include <iostream>
#include <stack>
#include <string>
using namespace std;

int is_balanced_parentheses(string str) {
    stack<char> s;
    for (char& c : str) {
        if (c == '(' || c == '[' || c == '{') {
            s.push(c);
        }
        else if (c == ')' || c == ']' || c == '}') {
            if (s.empty()) {
                return 3; // Missing opening parentheses
            }
            char opening = s.top();
            s.pop();
            if ((c == ')' && opening != '(') || (c == ']' && opening != '[') || (c == '}' && opening != '{')) {
                return 1; // Mismatched parentheses
            }
        }
    }
    if (!s.empty()) {
        return 2; // Missing closing parentheses
    }
    return 0; // Balanced parentheses
}

int main() {
    string str;
    cout << "Enter a string with parentheses: ";
    cin >> str;
    int res = is_balanced_parentheses(str);
    switch (res) {
    case 0:
        cout << "The parentheses are balanced!" << endl;
        break;
    case 1:
        cout << "The parentheses are not balanced due to mismatch!" << endl;
        break;
    case 2:
        cout << "The parentheses are not balanced due to missing closing parentheses!" << endl;
        break;
    case 3:
        cout << "The parentheses are not balanced due to missing opening parentheses!" << endl;
        break;
    }
    return 0;
}
