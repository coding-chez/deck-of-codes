#include "node.h"
#include <iostream>
using namespace std;

class BinaryTree {
	node* root;
	int size;
	
	
	void print(node* n) { // in-order traversals
		if (n->left) {
			print(n->left);
		}
		cout << n->elem << endl;
		if (n->right) {
			print(n->right);
		}
	}
	
	public:
	BinaryTree() {
		root = NULL;
		size = 0;
	}
	
	node* addRoot(int num) {	
		if (root){
			throw logic_error("Tree already has root");
		}
		root = addNode(NULL, num);
		return root;
	}
	
	node* addLeft(node* p, int num) {	
		if (p->left){
			throw logic_error(to_string(p->elem)
		}
		p->left = addNode(p, num);
		return p->left;
	}
	
	void print() { 
		cout << "Size: " << size << endl;
		print(root);
	}
	
	private:
		node* addNode(node* parent, int num){
			node* newNode = new node();
			newNode->elem = num;
			newNode->left = NULL;
			newNode->right = NULL;
			newNode->	parent = parent;
			size++;
			return newNode;
		}
};