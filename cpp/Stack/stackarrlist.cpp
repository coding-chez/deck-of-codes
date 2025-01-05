//-->main.cpp<--

#include <iostream>
#include "arraylist.h"

using namespace std;

int main() {
ArrayList* list = new ArrayList ();
list->add (13); // pointer = arrow and dot if it's not
list->add (4);
list->add (7);
list->add (9);
list->add (10);
list->print();
cout << "Third element is : " << list->get(3) << endl;
cout << "Fifth element is : " << list->get(5) << endl;
return 0;
}

//-->arraylist.h<--

#include "list.h"
#include <iostream>

using namespace std;

class ArrayList : public List { 
    int array[5];  
    int size = 0;  

public:
    void add(int num) {
        if (size < 5) {
            array[size] = num;  
            size++;  
            cout << num << " to be added" << endl;
        } 
    }
    
    int get(int pos) {
        if (pos >= 0 && pos < size) {
            return array[pos];
        } 
    }
    
    void print() {
        cout << "Size = " << size << endl;
        for (int i = 0; i < size; i++) {
            cout << array[i] << " ";
        }
        cout << endl;
    }
};
/*
#include "list.h"
#include <iostream>

using namespace std;

class ArrayList : public List { 
    int array[5];  
    int size = 0;  

public:
    void add(int num) {
        if (size < 5) {
            array[size] = num;  
            size++;  
            cout << num << " to be added" << endl;
        } 
    }
    
    int get (int pos) {
    	
	}
    
    void print() {
        cout << "Size = " << size << endl;
        for (int i = 0; i < size; i++) {
            cout << array[i] << " ";
        }
        cout << endl;
    }
};
*/

/*
What to implement in the int get (int pos) to get the third and fifth element in this code:
	
	main.cpp
	#include <iostream>
#include "arraylist.h"

using namespace std;

int main() {
	ArrayList* list = new ArrayList ();
	list->add (13); // pointer = arrow and dot if it's not
	list->add (4);
	list->add (7);
	list->add (9);
	list->add (10);
	list->print(); 
	cout << "Third element is : " << list->get(3) << endl; //should get 7
	cout << "Fifth element is : " << list->get(5) << endl; // 
	return 0;
}

list.h
class List {
	public:
	virtual void add (int num) = 0;
	vrtual int get (int pos) = 0;
};


arraylist.h
#include "list.h"
#include <iostream>

using namespace std;

class ArrayList : public List { 
    int array[5];  
    int size = 0;  

public:
    void add(int num) {
        if (size < 5) {
            array[size] = num;  
            size++;  
            cout << num << " to be added" << endl;
        } 
    }
    
    int get (int pos) {
    	
	}
    
    void print() {
        cout << "Size = " << size << endl;
        for (int i = 0; i < size; i++) {
            cout << array[i] << " ";
        }
        cout << endl;
    }
};
*/

//-->list.h<--

class List {
	public:
	virtual void add (int num) = 0;
	virtual int get (int pos) = 0;
};

//-->stack.h<--

class Stack {
	public:
	virtual void push (int e) = 0;
	virtual int pop() = 0;
	virtual int top() = 0;
	virtual int size () = 0;
	virtual bool isEmpty() = 0;
};

//-->stackarray.h<--


//implement the stack.h here

#include "stack.h"

class StackArray : public Stack {
    static const int MAX_SIZE = 100; 
    int arr[MAX_SIZE];
    int topIndex; 

public:
    StackArray() : topIndex(-1) {}

    void push(int e) override {
        if (topIndex < MAX_SIZE - 1) {
            arr[++topIndex] = e;
        } else {
            std::cout << "Stack Overflow" << std::endl;
        }
    }

    int pop() override {
        if (topIndex >= 0) {
            return arr[topIndex--];
        } else {
            std::cout << "Stack Underflow" << std::endl;
            return -1; 
        }
    }

    int top() override {
        if (topIndex >= 0) {
            return arr[topIndex];
        } else {
            std::cout << "Stack is empty" << std::endl;
            return -1; 
        }
    }

    int size() override {
        return topIndex + 1;
    }

    bool isEmpty() override {
        return topIndex == -1;
    }
};
*/
