//main.cpp
#include <iostream>
#include "singlystack.h"
using namespace std;

int main() {
    Stack* stack = new SinglyStack();
    int input;
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



//stack.h
class Stack {
	public:
	virtual void push(int num) = 0;
	virtual int pop() = 0;
	virtual int top() = 0;
	virtual int size() = 0;
	virtual bool isEmpty() = 0;
	virtual void print() = 0;
};


//list.h
class List {
    public:
    virtual void add(int) = 0;
    virtual int getHead() = 0;
    virtual int remove(int num) = 0;
    virtual void print() = 0;
};


//node.h
struct node {
	int elem;
	node* next;
};

//linkedlist.h
#include <cstdlib>
#include <iostream>
#include "list.h"
#include "node.h"
using namespace std;

class LinkedList : public List {
	node* head;
	node* tail;
	int size;

	public:
    // TODO if necessary - thiss
	int removeHead() {
        int removedNum = head->elem;
        head = head->next;
        size--;
        return removedNum;
	}

    // TODO if necessary
	void addTail(int num) {

    }

    // TODO if necessary --thiss
    void addHead(int num) {
        node* newNode = (node*) calloc(1, sizeof(node));
        newNode->elem = num;
        if(size == 0){
            head = tail= newNode;
        } else {
            newNode->next = head;
            head = newNode;
        }
        size++;
    }

    // TODO if necessary
    void add(int num) {
    
    }

    // TODO add more methods as necessary

    int _size() {
    	return size;
	}

    int getHead() {
    	return head->elem;
    }

    int remove(int num) {
    	return 0;
	}

    void print() {
    	node* curr = head;
    	if (size == 0) {
    		cout << "Empty" << endl;
		}
		else {
	    	do {
	    		cout << curr->elem;
	    		if (curr->next) {
	    			cout << " -> ";
				} else {
					cout << endl;
				}
	    		curr = curr->next;
			} while (curr);
		}
    }
};


//singlystack.h

#include "stack.h"
#include "linkedlist.h"

// TODO implement the class SinglyStack here
// by inheriting the Stack class


class SinglyStack : public Stack{
    LinkedList* list;
    
    public: 
    SinglyStack(){
        list = new LinkedList();
    }
    
        void push (int num){
            list->addHead(num);
        }
        
        int pop(){
            if(!isEmpty()){
                return list->removeHead();
            } else{
                return 0;
            }
        }
        
        int size(){
            return list->_size();
        }
        
        int top(){
            if(!isEmpty()){
                return list->getHead();
            } else{
                return 0;
            }
        }
        
        bool isEmpty(){
            return size() == 0;
        }
        
        void print(){
            list->print();
        }
};
