
//Pre-order Traversal VLR

cout << n->elem << " "; //V

if (n->left){
   postorder(n->left); //L
 }
 
 if (n->right){
    postorder(n->right); //R
}

//In-order Traversal LVR

if (n->left){
   inorder(n->left); //L
 }
cout << n->elem << " "; //V

if (n->right){
    inorder(n->right); //R
}

//Post-order Traversal LRV

if (n->left){
   postorder(n->left); //L
 }
 
 if (n->right){
    postorder(n->right); //R
}
cout << n->elem << " "; //V

//Breadthfirst

void breadthfirst() {
	    if (root == nullptr) return;
	    ArrayQueue queue; 
	    queue.enqueue(root);
	    
	    while (!queue.isEmpty()){
	       node* current =  queue.dequeue();
	       cout << current->elem << " ";
	       
	       if (current->left!= nullptr){
	            queue.enqueue(current->left);
	       }
	       
	       if (current->right!=nullptr){
	            queue.enqueue(current->right);
	       }
	    }
	   // cout << endl;
	 }