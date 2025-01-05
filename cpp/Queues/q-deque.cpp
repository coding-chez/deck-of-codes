//main.cpp
// ALREADY IMPLEMENTED
// Go to arraylist.h's methods.

#include <iostream>
#include "circulardeque.h"
using namespace std;

int main() {
	Deque* deque = new CircularDeque();
    int input;
    char op;
    do {
    	cout << "Enter op: ";
    	cin >> op;
    	switch (op) {
    		case 'f' :
		    	cin >> input;
		    	deque->addFirst(input);
		    	break;
    		case 'l' :
		    	cin >> input;
		    	deque->addLast(input);
		    	break;
		    case 'F':
		    	cout << "Removed " << deque->removeFirst() << endl;
		    	break;
		    case 'L':
		    	cout << "Removed " << deque->removeLast() << endl;
		    	break;
		    case 's':
		    	cout << "Size: " << deque->size() << endl;
		    	break;
		    case '?':
		    	cout << "Empty? " << deque->isEmpty() << endl;
		    	break;
		    case 'p':
		    	deque->print();
		    	break;
		    case 'x':
		    	cout << "Exiting";
		    	break;
		}
	} while (op != 'x');

    return 0;
}

//deque.h
class Deque{
    public:
        virtual void addFirst(int num) = 0;
        virtual void addLast(int num) = 0;
        virtual int removeFirst() = 0;
        virtual int removeLast() = 0;
        virtual int size() = 0;
        virtual bool isEmpty() = 0;
        virtual void print() = 0;
};

//list.h

// ALREADY IMPLEMENTED
// Go to arraylist.h's methods.

class List {
    public:
    virtual void add(int) = 0;
    virtual int get(int pos) = 0;
    virtual int remove(int num) = 0;
    virtual void print() = 0;
};

//arraylist.h
#include <iostream>
#include "list.h"
using namespace std;

class ArrayList : public List {
    public:
    int first;
    int last;
    int size;
    int array[10];
    ArrayList() {
        for (int i = 0; i < 10; i++) {
            array[i] = 0;
        }
        size = 0;
        first = 0;
        last = 0;
    }

    int capacity() {
        return 10;
    }

    void add(int num) {
    	addLast(num);
	}

    // TODO implement this method
    void addFirst(int num) {
        if (size < 10){
            if (first == 0)
                first = 9;
             else 
                first--;
            array [first] = num;
            size++;
        } else {
            cout << "PUNO NA" << endl;
        }
    }

    // already completed
    void addLast(int num) {
        if (size < 10) {
            array[last++] = num;
            if (last == 10) {
            	last = 0;
			}
			size++;
        } else {
            cout << "PUNO NA" << endl;
        }
    }

    // TODO implement this method
    int removeFirst() {
        if (size == 0){
            return 0;
        }
        int removedElem = array[first];
        array[first] = 0;
        first = (first + 1) % 10;
        size--;
        return removedElem;
	}

    // TODO implement this method
    int removeLast() {
        if (size == 0){
		    return 0;
		}
		if (last == 0){
		    last = 9;
		} else {
		    last--;
		}
		    int removedElem = array[last];
		    array[last] = 0;
		    size--;
		    return removedElem;
	}

    // Warning: Do not modify the codes below this point.
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
                // Step 4: Return
                return i+1;
            }
        }
        return -1;
    }

    int get(int pos) {
        return array[pos-1];
    }

    int _size() {
    	return size;
	}

    void print() {
        int i;
        if (size == 10) {
            for (i = 0; i < 10; i++) {
                cout << array[i] << " ";
            }
        } else if (first <= last) {
            for (i=0; i < first; i++) {
                cout << "? ";
            }
            for (; i < last; i++) {
                cout << array[i] << " ";
            }
            for (; i < 10; i++) {
                cout << "? ";
            }
        } else {
            for (i = 0; i < last; i++) {
                cout << array[i] << " ";
            }
            for (; i < first; i++) {
                cout << "? ";
            }
            for (; i < 10; i++) {
                cout << array[i] << " ";
            }
        }
        cout << endl;
        cout << "First Index: " << first << endl;
        cout << "Last Index: " << last << endl;
    }
};

//circulardeque.h
// TODO declare and create the list as field
// Go to arraylist.h's methods being called here.

#include <iostream>
#include "arraylist.h"
#include "deque.h"
using namespace std;

class CircularDeque : public Deque {
    ArrayList *list;
    
	public:
	CircularDeque(){
	    list = new ArrayList();
	}
	
	void addLast(int num) {
		list->addLast(num);
	}
	void addFirst(int num) {
		list->addFirst(num);
	}

	int removeFirst() {
		if (isEmpty()) {
			return 0;
		}
		return list->removeFirst();
	}

	int removeLast() {
		if (isEmpty()) {
			return 0;
		}
		return list->removeLast();
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
	
	~CircularDeque(){
	    delete list;
	}
};

