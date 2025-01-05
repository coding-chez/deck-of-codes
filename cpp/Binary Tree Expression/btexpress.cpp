//main.cpp

// 1. Go to the opInput method.
// 2. Go to node.h's evaluate method.
#include <iostream>
#include "mybinarytree.h"
using namespace std;

node* opInput(MyBinaryTree* tree, string prompt, node* parent);

int main(void) {
	MyBinaryTree* tree = new MyBinaryTree();
	char op;
	int input, ind;
	node* nodes[100];
	int res;
    tree->root = opInput(tree, "root", NULL);
    do {
        cout << "Op: ";
        cin >> op;
        switch (op) {
            case 'p':
                tree->print();
                break;
            case 'e':
                cout << "Answer: " << tree->evaluate() << endl;
                break;
            case 'x':
                cout << "Exiting" << endl;
                break;
            default:
                cout << "Invalid operation" << endl;
        }
    } while (op != 'x');
	return 0;
}

node* opInput(MyBinaryTree* tree, string prompt, node* parent) {
    string input;
	cout << "Enter " << prompt << ": ";
	cin >> input;
    node *n, *left, *right;
    
    switch (input[0]) {
        // TODO add cases for operations and default case for numbers
        case '+':
        case '*':
        case '/':
        case '-':
            n = tree->create_node(input, parent);
            n->left = opInput(tree, "left of " + input, n); 
            n->right = opInput(tree, "right of " + input, n);
            break;
        default:
            n = tree->create_node(input, parent);
        
    }
    return n;
}

//node.h

#include <string>
#include <stdexcept>
using namespace std;

struct node {
	string elem;
	node* left;
	node* right;
	node* parent;

    // TODO evaluate method
    int evaluate() {
        if (isdigit(elem[0])){
            return stoi(elem);
        }
        
        int leftValue = left ? left->evaluate() : 0;
        int rightValue = right ? right->evaluate() : 0;
        
        switch (elem[0]){
            case '+':
                return leftValue + rightValue;
            case '-':
                return leftValue - rightValue;
            case '*':
                return leftValue * rightValue;
            case '/':
                return leftValue / rightValue;
            default:
                throw logic_error("Invalid operator");
        }
    }
};