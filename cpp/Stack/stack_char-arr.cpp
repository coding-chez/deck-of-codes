//main.cpp
#include <iostream>
#include "arraystack.h"
using namespace std;

int main() {
    Stack* stack = new ArrayStack();
    char input;
    char op;
    do {
    	cout << "Enter op: ";
    	cin >> op;
    	switch (op) {
    		case 'a' :
		    	cin >> input;
		    	stack->push(input);
		    	break;
		    case 'r':
		    	cout << "Removed " << stack->pop() << endl;
		    	break;
		    case 't':
		    	cout << "Last element: " << stack->top() << endl;
		    	break;
		    case 's':
		    	cout << "Size: " << stack->size() << endl;
		    	break;
		    case '?':
		    	cout << "Empty? " << stack->isEmpty() << endl;
		    	break;
		    case 'p':
		    	stack->print();
		    	break;
		    case 'x':
		    	cout << "Exiting";
		    	break;
		}
	} while (op != 'x');
    return 0;
}

//list.h
// TODO change this to handle char elements

class List {
    public:
    virtual void add(char) = 0;
    virtual char get(int pos) = 0;
    virtual int remove(int num) = 0;
    virtual void print() = 0;
    virtual char removeLast() = 0;
};
//arraylist.h
// TODO change this to handle char elements

#include <iostream>
#include <cstdlib>
#include <math.h>
#include "list.h"
using namespace std;

class ArrayList : public List {
    public:
    int* array;
    int size;
    int capacity = 5;

	void dynamic_add() {
		int new_size = ceil(capacity * 1.5);
		int* new_array = (int*) realloc(array, sizeof(int) * new_size);
		array = new_array;
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

    void add(char letter) {
        // TODO add num
        array[size++] = letter;
        dynamic_add();
    }

    int _size() {
    	return size;
	}

    char removeLast() {
        // TODO remove and return last element
        array[size--];
        int count = 0;
        for(int i = 0; i < size; i++){
            count++;
        }
        dynamic_deduce();
        return array[count];
	}


	int removeFirst() {
        // NOT NECESSARY
        return 0;
    }

    int remove(int num) {
        // NOT NECESSARY
        return 0;
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
//stack.h
// TODO change this to handle char elements

class Stack {
	public:
	virtual void push(int) = 0;
	virtual char pop() = 0;
	virtual char top() = 0;
	virtual int size() = 0;
	virtual int isEmpty() = 0;
	virtual void print() = 0;
};
//arraystack.h
// TODO change this to handle char elements
#include "stack.h"
#include <iostream>
#include "arraylist.h"
using namespace std;

class ArrayStack : public Stack {
	ArrayList* list = new ArrayList();
	public:

    // TODO push
	void push(int num) {
        list->add(num);
	}

    // TODO pop
	char pop() {
	    if(!isEmpty()){
            return list->removeLast();
	    } else{
	        return ' ';
	    }
	}

    // TODO top
	char top() {
        return list->get(list->size);
	}

    // TODO size
	int size() {
        return list->size;
	}

    // TODO isEmpty
	int isEmpty() {
        return list->_size() == 0;
	}

	void print() {
		list->print();
	}
};