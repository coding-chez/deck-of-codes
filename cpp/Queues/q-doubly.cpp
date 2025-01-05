//main.cpp
// Warning: Do not modify this file.

#include <iostream>
#include "doublydeque.h"

int main() {
	Deque* deque = new DoublyDeque();
    int input, res;
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
    		case 'F' :
		    	cout << "Removed " << deque->removeFirst() << endl;
		    	break;
    		case 'L' :
		    	cout << "Removed " << deque->removeLast() << endl;
		    	break;
    		case 's' :
		    	cout << "Size: " << deque->size() << endl;
		    	break;
    		case '?' :
		    	cout << "IsEmpty? " << deque->isEmpty() << endl;
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

//list.h

class List {
    public:
    virtual void add(int) = 0;
    virtual int get(int pos) = 0;
    virtual int remove(int num) = 0;
    virtual void print() = 0;
};

//linkedlist.h

//#include "list.h"
#include "node.h"
#include <iostream>
#include <cmath>
using namespace std;

class List;
class LinkedList {
	node *head, *tail;
	int size;

public:
    // TODO implement
    LinkedList() : head(nullptr), tail (nullptr), size(0){}
	void addHead(int num) {
	    node* newNode = new node{};
	    newNode->elem = num;
	    newNode->next = head;
	    newNode->prev = nullptr;
	    
	    if (head != nullptr){
	        head->prev = newNode;
	    } else {
	        tail = newNode;
	    }
	    
	    head = newNode;
	    size++;
	}

    // TODO implement
	void addTail(int num) {
	    node* newNode = new node{};
	    newNode->elem = num;
	    newNode->next = nullptr;
	    newNode->prev = tail;
	    
	    if (tail != nullptr){
	        tail->next = newNode;
	    } else {
	        head = newNode;
	    }
	    
	    tail = newNode;
	    size++;
	}

    // TODO implement
	int removeTail() {
	    if (tail == nullptr){
	        return 0;
	    }
		int removedElem = tail->elem;
		node* temp = tail;
		tail = tail->prev;
		
		if (tail == nullptr){
		    head = nullptr;
		} else {
		    tail->next = nullptr;
		}
		delete temp;
		size--;
		return removedElem;
	}

    // TODO implement
	int removeHead() {
	    if (head == nullptr){
		    return 0;
		}
		int removedElem = head->elem;
		node* temp = head;
		head = head->next;
		
		if (head == nullptr){
		    tail = nullptr;
		} else {
		    head->prev = nullptr;
		}
		delete temp;
		size--;
		return removedElem;
	}

    // TODO implement
	int getSize() {
        return size;
	}

	void add(int num) {
		addTail(num);
	}

    int remove(int num) {
        // IGNORE this
        return 0;
	}

    int get(int pos) {
        // IGNORE this
        return 0;
	}

    // TODO implement print method
    void print() {
    	node* curr;
    	if (size == 0) {
    		cout << "Empty" << endl;
		} else {
		    curr = head;
			cout << "From HEAD: ";
            // TODO print all elements from first to last, separated by ->
            while (curr != nullptr){
                cout << curr->elem;
                if (curr->next != nullptr){
                    cout << " -> ";
                }
                curr = curr->next;
            }
            cout << endl;
            
            curr = tail;
			cout << "From TAIL: ";
            // TODO print all elements from last to first, separated by <-
            while (curr != nullptr){
                cout << curr->elem;
                if(curr->prev != nullptr){
                    cout << " <- ";
                }
                curr = curr->prev;
            }
            cout << endl;
		}
    }
};


//node.h

struct node {
	int elem;
	node* next;
	node* prev;
};

//deque.h
#include "list.h" 

class Deque {
    public:
        virtual void addFirst(int num) = 0;
        virtual void addLast(int num) = 0;
        virtual int removeFirst() = 0;
        virtual int removeLast() = 0;
        virtual int size() = 0;
        virtual bool isEmpty() = 0;
        virtual void print() = 0;
};

//doublydeque.h
#include "deque.h"
#include "linkedlist.h"

class DoublyDeque : public Deque {
    LinkedList* list = new LinkedList();
    
    public:
        void addFirst (int num){
            list->addHead(num);
        }
        
        void addLast (int num){
            list->addTail(num);
        }
        
        int removeFirst(){
            if (list->getSize() > 0){
                return list->removeHead();
            }
            return 0;
        }
        
        int removeLast(){
            if (list->getSize() > 0){
                return list->removeTail();
            }
            return 0;
        }
        
        int size(){
            return list->getSize();
        }
        
        bool isEmpty(){
            return list->getSize()== 0;
        }
        
        void print(){
            list->print();
        }
};