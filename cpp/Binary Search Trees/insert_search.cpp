//BST insert and search

//--> main.cpp <--
// DO NOT modify this file.
// Go to bst's insert and search method

#include <iostream>
#include "bst.h"
using namespace std;

int main(void) {
	BST* bst = new BST();
	char op;
	int input, ind;
	do {
		cout << "Op: ";
		cin >> op;
		switch (op) {
			case 's':
				cin >> input;
				cout << "Is there " << input << "? " << bst->search(input) << endl;
				break;
			case 'i':
				cin >> input;
				bst->insert(input);
				break;
			case 'p':
				bst->print();
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


//--> mybinarytree.h <--

// DO NOT modify this file.
// Go to bst's insert and search method

#include <cstdlib>
#include <iostream>
#include "binarytree.h"
using namespace std;

class MyBinaryTree : public BinaryTree {
	node* root;
	int size;

	node* create_node(int e, node* parent) {
		node* n = (node*) calloc( 1, sizeof(node) );
		n->elem = e;
		n->parent = parent;
		return n;
	}

	public:
	node* addRoot(int e) {
		if (root) {
			cout << "Root exists" << endl;
			return NULL;
		}
		node* n = create_node(e, NULL);
		root = n;
		size++;
		return n;
	}

	node* left(node* p) {
		return p->left;
	}

	node* right(node* p) {
		return p->right;
	}

	node* sibling(node* n) {
		node* par = n->parent;
		if (!par) {
			return NULL;
		}
		if (n == par->left) {
			return par->right;
		}
		return par->left;
	}

	node* addLeft(node* p, int e) {
		if (p->left) {
			cout << "Left of " << p->elem << " exists" << endl;
			return NULL;
		}
		node* n = create_node(e, p);
		p->left = n;
		size++;
		return n;
	}

	node* addRight(node* p, int e) {
		if (p->right) {
			cout << "Right of " << p->elem << " exists" << endl;
			return NULL;
		}
		node* n = create_node(e, p);
		p->right = n;
		size++;
		return n;
	}

    int remove(node* n) {
        int res = n->elem;
        if (left(n) && right(n)) {
            return -1;
        }
        if (!left(n) && !right(n)) {
            if (n->parent) {
                node* par = n->parent;
                if (left(par) == n) {
                    par->left = NULL;
                } else {
                    par->right = NULL;
                }
            } else {
                root = NULL;
            }
        } else {
            node* child;
            if (left(n)) {
                child = left(n);
            } else {
                child = right(n);
            }
            if (n->parent) {
                node* par = n->parent;
                if (left(par) == n) {
                    par->left = child;
                } else {
                    par->right = child;
                }
                child->parent = par;
            } else {
                root = child;
                child->parent = NULL;
            }
        }
        size--;
        free(n);
        return res;
    }

	node* getRoot() {
		return root;
	}

	void print() {
		cout << "Size: " << size << endl;
		if (!root) {
			cout << "EMPTY" << endl;
			return;
		}
		node* curr = root;
		print_node("", root, false);
        cout << "Status: " << check_parent(root, NULL) << endl;
	}

	void print_node(string prefix, node* n, bool isLeft) {
		cout << prefix;
        cout << (isLeft ? "+--L: " : "+--R: " );
        cout << n->elem << endl;
		if (n->left) {
			print_node(prefix + "|   ", n->left, true);
		}
		if (n->right) {
			print_node(prefix + "|   ", n->right, false);
		}
	}

    bool check_parent(node* curr, node* par) {
        if (!curr) {
            return true;
        }
        if (curr->parent != par) {
            return false;
        }
        return check_parent(curr->left, curr) && check_parent(curr->right, curr);
    }
};


//--> binarytree.h <--

// DO NOT modify this file.
// Go to bst's insert and search method

#include "node.h"

class BinaryTree {
	public:
	virtual node* left(node*) = 0;
	virtual node* right(node*) = 0;
	virtual node* addRoot(int e) = 0;
	virtual node* addLeft(node* p, int e) = 0;
	virtual node* addRight(node* p, int e) = 0;
	virtual int remove(node* n) = 0;
	virtual node* getRoot() = 0;
	virtual void print() = 0;

	virtual node* sibling(node* n) = 0;
};


//--> node.h <--

// DO NOT modify this file.
// Go to bst's insert and search method

struct node {
	int elem;
	node* left;
	node* right;
	node* parent;
};

//--> bst.h <--

#include "mybinarytree.h"

class BST {
	BinaryTree* tree = new MyBinaryTree();
    node* root = nullptr;
    
	public:
	BST(){
	    tree = new MyBinaryTree();
	    root = nullptr;
	}
	
	bool search(int num) {
        return searchH(root, num);
	}

	bool insert(int num) {
	    if (root==nullptr){
	        root = tree->addRoot(num);
	        return true;
	    }
	    return insertH (root, num);
	}

	void print() {
		tree->print();
	}
	
    
    private:
	    bool searchH (node* current, int num){
	        if (current == nullptr){
	            return false;
	        }
	        
	        if (current->elem == num){
	            return true;
	        }
	       
	        if (num < current->elem){
	            return searchH(current->left, num);
	        } else {
	            return searchH(current->right,num);
	        }
	    } 
	    
	    bool insertH (node* current, int num){
	        if(current->elem == num){
	            return false;
	        }
	        
	        if (num < current->elem){
	            
	            if (current->left == nullptr){
	                current->left = tree->addLeft(current, num);
	                return true;
	            }
	            return insertH (current->left,num);
	        } else {
	            if (current->right == nullptr){
	                current->right = tree->addRight(current, num);
	                return true;
	            }
	            return insertH(current->right,num);
	        }
	        
	    }
	
};
