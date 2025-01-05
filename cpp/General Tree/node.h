#include <cstdlib>
#include <algorithm>

struct node {
	node **children;
	int num_child;
	node *parent;
	int elem;
	

    int depth() {
		// TODO implementation [+10 pts]
		if (parent == nullptr){
		    return 0;
		} else {
            return 1 + parent->depth();
        }
	}

    int height() {
		// TODO implementation [+15 pts]
		if (num_child == 0){
		    return 0;
		}
		
		int max_height = 0;
		
		for (int i = 0; i < num_child; i++){
		   int child_height = children[i]->height();
		    max_height = std::max(max_height,child_height);
		}
        return 1 + max_height;
    }
};