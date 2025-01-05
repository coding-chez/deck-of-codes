//main.cpp
#include <iostream>
#include "singlyqueue.h"
using namespace std;

// TODO 2: Implement the method and return a queue that contains only the passing scores.
Queue* passing_only(Queue* scores, int passing) {
    Queue* passingScores = new SinglyQueue();
    
    while(!scores->isEmpty()){
        int score = scores->dequeue();
        if (score >= passing){
            passingScores->enqueue(score);
        }
    }
    return passingScores;
}

int main() {
    Queue* queue = new SinglyQueue();
    int passing;
    int score;
    // TODO 1: Let the user enter the elements until zero (0).
    // and place the elements in the given queue.
    // After, prompt the user to enter passing score.
    cout <<"Enter score: ";
    while (cin >> score && score != 0){
        queue->enqueue(score);
        cout << "Enter score: ";
    }
    
    cout << "Enter passing score: ";
    cin >> passing;
    
    // DO NOT MODIFY the following code.
    Queue* res = passing_only(queue, passing);
    cout << "Passing scores: ";
    if (res->isEmpty()) {
        cout << "(none)";
    }
    while (!res->isEmpty()) {
        cout << res->dequeue() << " ";
    }
    
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


//singlyqueue.h
#include <iostream>
#include "linkedlist.h"
#include "queue.h"
using namespace std;

class SinglyQueue : public Queue {
    LinkedList* list = new LinkedList();
    
    public:
    void enqueue(int num) {
        list->addTail(num);
    }
    
    int dequeue() {
        if (!isEmpty()) {
            return list->removeHead();
        } 
        cout << "WA LAGI SULOD" << endl;
        return 0;
    }
    
    int first() {
        if (!isEmpty()) {
            return list->getHead(); 
        }
        cout << "WA LAGI SULOD" << endl;
        return 0;
    }
    
    int size() {
        return list->_size();
    }
    
    bool isEmpty() {
        return size() == 0;
    }
    
    void print() {
        list->print();
    }
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
    int removeHead() {
        int elem = head->elem;
        head = head->next;
        size--;
        return elem;
    }
    
    void addTail(int num) {
        add(num);
    }

    void addHead(int num) {
        node* n = (node*) calloc( 1, sizeof(node) );
        n->elem = num;
        if (size == 0) {
            head = n;
            tail = n;
        } else {
            n->next = head;
            head = n;
        }
        size++;
    }
    
    int _size() {
        return size;
    }
    
    void add(int num) {
        node* n = (node*) calloc( 1, sizeof(node) );
        n->elem = num;
        if (size == 0) {
            head = n;
            tail = n;
        } else {
            tail->next = n;
            tail = n;
        }
        size++;
    }
    
    int getHead() {
        return head->elem;
    }
    
    int get(int pos) {
        return 0;
    }
        
    int remove(int num) {
        node* curr = head;
        node* prev;
        while (curr) {
            if (curr->elem == num) {
                prev->next = curr->next;
                size--;
                return 0;
            }
            prev = curr;
            curr = curr->next;
        }
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

//node.h

struct node {
    int elem;
    node* next;
};