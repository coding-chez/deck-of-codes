//main.cpp

#include <iostream>
#include "arrayqueue.h"
using namespace std;

int main() {
    Queue* queue = new ArrayQueue();
    int input;
    char op;
    do {
    	cout << "Enter op: ";
    	cin >> op;
    	switch (op) {
    		case 'e' :
		    	cin >> input;
		    	queue->enqueue(input);
		    	break;
		    case 'd':
		    	cout << "Removed " << queue->dequeue() << endl;
		    	break;
		    case 'f':
		    	cout << "First element: " << queue->first() << endl;
		    	break;
		    case 's':
		    	cout << "Size: " << queue->size() << endl;
		    	break;
		    case '?':
		    	cout << "Empty? " << queue->isEmpty() << endl;
		    	break;
		    case 'p':
		    	queue->print();
		    	break;
		    case 'x':
		    	cout << "Exiting";
		    	break;
		}
	} while (op != 'x');
    return 0;
}

//queue.h
class Queue {
	public:
	virtual void enqueue(int) = 0;
	virtual int dequeue() = 0;
	virtual int first() = 0;
	virtual int size() = 0;
	virtual bool isEmpty() = 0;
	virtual void print() = 0;
};

//list.h
class List {
    public:
    virtual void add(int) = 0;
    virtual int get(int pos) = 0;
    virtual int remove(int num) = 0;
    virtual void print() = 0;
};

//arraylist.h
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

//arrayqueue.h
// TODO implement the class ArrayQueue here
// by inheriting the Queue class

#include "queue.h"
#include "arraylist.h"
#include <iostream>
#include <cstdlib>

using namespace std;

class ArrayQueue : public Queue {
    ArrayList list;
    
    public:
        void enqueue(int num){
            list.add(num);
        }
        
        int dequeue(){
            if (!isEmpty()){
                return list.removeFirst();
            }
            return 0;
        }
        
        int first(){
            if(!isEmpty()){
                return list.get(1);
            }
            return 0;
        }
        
        int size(){
            return list._size();
        }
        
        bool isEmpty(){
            return list._size() == 0;
        }
        
        void print(){
            list.print();
        }
        
        int removeLast(){
            if (!isEmpty()){
                return list.removeLast();
            }
            return 0;
        }
};