#include <stdexcept>
#include <iostream>
#include <cstdlib>
#include "gentree.h"
using namespace std;


class MyGenTree : public GenTree {
	node* root;
	int size;

	public:
	MyGenTree() : root(NULL), size(0){}
	
	node* addRoot(int e) {
		// TODO implementation [+10 pts]
		if (!root){
		    root = addNode (NULL, e);
		    return root;
		}
		throw logic_error ("Already has root");
		}
		node* addNode (node* parent, int num){
		    node* newNode = new node;
		    newNode ->elem = num;
		    newNode->parent = parent;
		    newNode->num_child = 0;
		    newNode->children = nullptr;
		    size++;
		    return newNode;
		}

	node* addChild(node* p, int e) {
		// TODO implementation [+30 pts]
		if (!p) {
		    throw logic_error ("Cannot add more children");
		}
		
		node* newChild = addNode (p, e);
		
		p->children = (node**)realloc(p->children,sizeof(node*) * (p->num_child + 1));
		
        p->children[p->num_child] = newChild;
        p->num_child++;
        return newChild;
	}

	void remove(node* n) {
		// TODO implementation [+35 pts]
		if (n == NULL){
		    throw logic_error("Cannot remove a null node");
		}
		
		node* parent = n->parent;
		
		if (n == root){
		    if (n->num_child == 0){
		        delete n;
		        root = NULL;
		        size--;
		        return;
		    } else if (n->num_child == 1){
		        root = n->children[0];
		        root->parent = NULL;
		        delete n;
		        size--;
		        return;
		    }
		}
		
		if (n->num_child > 0){
		    cout << n->elem << " has children" << endl;
		    return;
		}
		    for (int i = 0; i < parent->num_child; i++){
		         if (parent->children[i] == n){
		            for (int j = i; j < parent->num_child - 1; j++){
		                parent->children[j] = parent->children[j + 1];
		            }
		            parent->num_child--;
		            parent->children = (node**)realloc(parent->children,sizeof(node*)*parent->num_child);
		            break;
		         }
		    }
		    if (n->num_child == 1){
		        node* child = n->children[0];
		        child->parent = parent;
		        parent->children = (node**)realloc(parent->children,sizeof(node*)*(parent->num_child + 1));
		        parent->children[parent->num_child]=child;
		        parent->num_child++;
		    }
      //  for (int i = 0; i < n->num_child;i++){
     //      remove(n->children[i]);
     //   }
        
        delete n;
        size--;
	}
    
    int getSize() override{
        return size;
    }
    
    node* getRoot() override{
        return root;
    }
    
    // DO NOT MODIFY this line onwards.
	void print() {
		cout << "Size: " << size << endl;
		if (!root) {
			cout << "EMPTY" << endl;
			return;
		}
		node* curr = root;
		print_node("", root);
        cout << "Status: " << check_parent(root, NULL) << endl;
	}

	void print_node(string prefix, node* n) {
		cout << prefix;
        cout << "+-->: ";
        cout << n->elem << endl;
		for (int i = 0; i < n->num_child; i++) {
			print_node(prefix + "|   ", n->children[i]);
		}
	}

    bool check_parent(node* curr, node* par) {
        if (!curr) {
            return true;
        }
        if (curr->parent != par) {
            return false;
        }
        bool res = true;
		for (int i = 0; i < curr->num_child; i++) {
			res &= check_parent(curr->children[i], curr);
		}
        return res;
    }
};