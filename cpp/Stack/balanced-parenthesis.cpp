//main.cpp
#include<iostream>
#include<stack>
#include<string>
#include "arraystack.h"
using namespace std;

// TODO implement this method.
// Use the ArrayStack to perform the stack operations needed.

/*


bool isOpeningParenthesis(cahr ch){
    return ch == '(' || ch == '{' || ch == 
}


*/
int is_balanced_parentheses(string str){
    stack<char> openBrackets;
    for(char c : str){
        if(c == '('||c=='{'||c=='['){
            openBrackets.push(c);
        } else if(c == ')' || c == '}' || c == ']'){
            if(openBrackets.empty()){
                return 3;
            }
            char top = openBrackets.top();
            if(c == ')' && top != '('||c == '}' && top != '{' || c == ']' && top != '['){
                return 1;
            }
            openBrackets.pop();
        }
    }
    
    if(!openBrackets.empty()){
        return 2;
    }
    return 0;
}



int main(){
    string str;
    cout << "Enter a string with parentheses: ";
    cin >> str;
    int res = is_balanced_parentheses(str);
    switch(res) {
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
//arraystack.h
#include <iostream>
#include "arraylist.h"
#include "stack.h"
using namespace std;

class ArrayStack : public Stack {
	ArrayList* list = new ArrayList();
	public:
	void push(char num) {
		list->add(num);
	}
	
	char pop() {
		if (isEmpty()) {
			return ' ';
		}
		return list->removeLast();
	}
	
	char top() {
		if (isEmpty()) {
			return ' ';
		}
		return list->get(size());
	}
	
	int size() {
		return list->_size();
	}
	
	bool isEmpty() {
		return list->_size() == 0;
	}
	
	void print() {
		list->print();
	}
	
};
//stack.h
class Stack {
	public:
	virtual void push(char) = 0;
	virtual char pop() = 0;
	virtual char top() = 0;
	virtual int size() = 0;
	virtual bool isEmpty() = 0;
	virtual void print() = 0;
};
//list.h
class List {
    public:
    virtual void add(char) = 0;
    virtual char get(int pos) = 0;
    virtual int remove(char num) = 0;
    virtual void print() = 0;
};
//arraylist.h
#include <iostream>
#include <cstdlib>
#include <math.h>
#include "list.h"
using namespace std;

class ArrayList : public List {
    char* array;
    int size;
    int capacity = 5;

	void dynamic_add() {
		int new_size = ceil(capacity * 1.5);
		char* new_array = (char*) realloc(array, sizeof(char) * new_size);
		array = new_array;
		capacity = new_size;
	}
	
	void dynamic_deduce() {
		int new_size = ceil(capacity * 0.75);
		char* new_array = (char*) realloc(array, sizeof(char) * new_size);
		array = new_array;
		capacity = new_size;
	}

    public:
    // constructor
    ArrayList() {
    	array = (char*) calloc( capacity, sizeof(char) );
        size = 0;
    }

    void add(char num) {
    	if (size == capacity) {
        	dynamic_add();
		}
        array[size++] = num;
    }
    
    int _size() {
    	return size;
	}
    
    char removeLast() {
    	return array[--size];
	}


	char removeFirst() {
		char num = array[0];
				// Step 2: MOVE the elements to left
                for (int j = 0; j < size-1; j++) {
                    array[j] = array[j+1];
                }
                // Step 3: Set the size
                array[size-1] = 0;
                size = size-1;
                // Step 4: Check to reduce capacity
                if (size <= 2.0/3 * capacity) {
                	dynamic_deduce();
				}
                // Step 5: Return
                return num;
    }

    int remove(char num) {
        // Step 1: FIND the num
        for (int i = 0; i < size; i++) {
            if (array[i] == num) {
                // Step 2: MOVE the elements to left
                for (int j = i; j < size-1; j++) {
                    array[j] = array[j+1];
                }
                // Step 3: Set the size
                array[size-1] = 0;
                size = size-1;
                // Step 4: Check to reduce capacity
                if (size <= 2.0/3 * capacity) {
                	dynamic_deduce();
				}
                // Step 5: Return
                return i+1;
            } 
        }
        return -1;
    }

    char get(int pos) {
        return array[pos-1];
    }

    void print() {
   		int i;
        for (i = 0; i < size; i++) {
            cout << array[i] << " ";
        }
        for (; i < capacity; i++) {
            cout << "? ";
		}
        cout << endl;
    }
};