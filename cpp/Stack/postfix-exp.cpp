//main.cpp
#include <iostream>
#include <string>
#include "arraystack.h"
using namespace std;

int main() {
	Stack* stack = new ArrayStack();
    string input;
    do {
    	cout << "Enter: ";
    	cin >> input;
    	int num;
    	int a, b, result;
    	switch (input[0]) {
    		// TODO add cases for operations here
    		case '+':
    		    b = stack->pop();
    		    a = stack->pop();
    		    result = a + b;
    		    stack ->push(result);
    		    break;
    		case '-':
    		    b = stack->pop();
    		    a = stack->pop();
    		    result = a - b;
    		    stack ->push(result);
    		    break;
    		case '*':
    		    b = stack->pop();
    		    a = stack->pop();
    		    result = a * b;
    		    stack ->push(result);
    		    break;
    		case '/':
    		    b = stack->pop();
    		    a = stack->pop();
    		    result = a / b;
    		    stack ->push(result);
    		    break;
    		case 'x':
    			cout << "Answer is " << stack->pop() << endl;
    			break;
    		default: // number
    			num = stoi(input); // converts string to int
                // TODO something
                stack->push(num);
    			break;
		}
	} while (input != "x");
	delete stack;
    return 0;
}
//stack.h
// DO NOT modify this file.
// Only handle main.cpp
class Stack {
	public:
	virtual void push(int) = 0;
	virtual int pop() = 0;
	virtual int top() = 0;
	virtual int size() = 0;
	virtual bool isEmpty() = 0;
	virtual void print() = 0;
};
//arraystack.h
// DO NOT modify this file.
// Only handle main.cpp
#include <iostream>
#include "stack.h"
#include "arraylist.h"
using namespace std;

class ArrayStack : public Stack {
	ArrayList* list = new ArrayList();
	public:
	void push(int num) {
		list->add(num);
	}

	int pop() {
		if (isEmpty()) {
			cout << "WAY SULOD OI" << endl;
			return 0;
		}
		return list->removeLast();
	}

	int top() {
		if (isEmpty()) {
			cout << "WAY SULOD OI" << endl;
			return 0;
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
//arraylist.h
// DO NOT modify this file.
// Only handle main.cpp
#include <iostream>
#include <cstdlib>
#include <math.h>
#include "list.h"
using namespace std;

class ArrayList : public List {
    int* array;
    int size;
    int capacity = 5;

	void dynamic_add() {
		int new_size = ceil(capacity * 1.5);
		array = (int*) realloc(array, sizeof(int) * new_size);
//		int array = new_array;
		capacity = new_size;
	}

	void dynamic_deduce() {
		int new_size = ceil(capacity * 0.75);
		int* new_array = (int*) realloc(array, sizeof(int) * new_size);
		array = new_array;
		capacity = new_size;
	}

    public:
    // constructor
    ArrayList() {
    	array = (int*) calloc( capacity, sizeof(int) );
        size = 0;
    }

    void add(int num) {
    	if (size == capacity) {
    		dynamic_add();
		}
		array[size++] = num;
    }

    int _size() {
    	return size;
	}

    int removeLast() {
    	return array[--size];
	}

	int removeFirst() {
		int num = array[0];
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

    int remove(int num) {
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

    int get(int pos) {
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
//list.h
// DO NOT modify this file.
// Only handle main.cpp
class List {
    public:
    virtual void add(int) = 0;
    virtual int get(int pos) = 0;
    virtual int remove(int num) = 0;
    virtual void print() = 0;
};