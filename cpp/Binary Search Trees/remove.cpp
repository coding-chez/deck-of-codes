//-->main.cpp<--

// DO NOT modify this file.
// Go to bst's remove method

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
			case 'r':
				cin >> input;
				bst->remove(input);
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

//-->mybinarytree.h<--
// DO NOT modify this file.
// Go to bst's remove method

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
			throw logic_error("Already has root");
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
			throw logic_error(to_string(p->elem) + " already has left child");
		}
		node* n = create_node(e, p);
		p->left = n;
		size++;
		return n;
	}

	node* addRight(node* p, int e) {
		if (p->right) {
			throw logic_error(to_string(p->elem) + " already has right child");
		}
		node* n = create_node(e, p);
		p->right = n;
		size++;
		return n;
	}

    int remove(node* n) {
        int res = n->elem;
        if (left(n) && right(n)) {
            throw logic_error("Cannot remove a node with 2 children");
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

//-->binarytree.h<--

// DO NOT modify this file.
// Go to bst's remove method

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

//-->node.h<--

// DO NOT modify this file.
// Go to bst's remove method

struct node {
	int elem;
	node* left;
	node* right;
	node* parent;
};

//-->bst.h<---
#include "mybinarytree.h"

class BST {
	BinaryTree* tree = new MyBinaryTree();
    node* root = nullptr;
    int size = 0;
    
	public:
	
    // TODO copy from the previous activity
	bool search(int num) {
	    node* curr = tree->getRoot();
	    while (curr){
	        if (num == curr->elem){
	            return 1;
	        } else if (num < curr->elem){
	            curr = curr->left;
	        } else {
	            curr = curr->right;
	        }
	    }
		return 0;
	}
	
	bool insert(int num) {
		node* curr = tree->getRoot();
		
		if (!curr){
		    tree->addRoot(num);
		    return true;
		}
		
		while (curr){
		    if (num < curr->elem){
		        if(!curr->left){
		            tree->addLeft(curr,num);
		            return true;
		        } else {
		            curr = curr->left;
		        }
		    } else if (num > curr->elem){
		        if (!curr->right){
		            tree->addRight(curr, num);
		            return true;
		        } else {
		            curr = curr->right;
		        }
		    } else {
		        return false;
		    }
		}
		return false;
	}

    // TODO implement remove method
    // You can add helper methods like what is done for insert and search
    /*
    bool remove(int num){
        return remove_node(tree->getRoot(), num);
    }
    
    bool remove_node(node* n, int num){
        if (n == NULL){
            return false;
        }
            if (n->elem == num){
                node* rst = n->right;
                while (rst->left){
                    rst = rst->left;
            }
            n->elem = rst->elem;
            tree->remove(rst);
        } else {
            tree->remove(n);
        }
        return true;
        
        if (num > n->elem){
            return remove_node(n->right, num);
        } else {
            tree->remove(n);
        }
    }
    */
    
    bool remove(int num) {
        node* current = tree->getRoot();
        node* parent = nullptr;
        
        while (current && current->elem != num){
            parent = current;
            if (num < current->elem){
                current=current->left;
            } else {
                current=current->right;
            }
        }
        if(!current){
            return false;
        }
        
        if (!current->left && !current->right){
            if (current == tree->getRoot()){
                tree->remove(current);
            } else {
                if (parent->left == current){
                    parent->left = nullptr;
                } else {
                    parent->right = nullptr;
                }
                tree->remove(current);
            }
        } else if (!current->left || !current->right){
            node* child = current->left ? current->left : current->right;
            
            if (current == tree->getRoot()){
                tree->remove(current);
                tree->addRoot(child->elem);
            } else {
                if (parent->left == current){
                    parent->left = child;
                } else {
                    parent->right =child;
                }
                tree->remove(current);
            }
        } else {
            node* succ = current->right;
            while (succ->left){
                succ = succ->left;
            }
            
            current->elem = succ->elem;
            tree->remove(succ);
        }
        return true;
    }

	void print() {
		tree->print();
	}
};