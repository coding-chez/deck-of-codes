class BinaryTree {
private:
    node* root;

public:
    BinaryTree() : root(nullptr) {}

    node* addRoot(int num) {
        if (root != nullptr) {
            throw std::runtime_error("Error: Tree is not empty. Cannot add root.");
        }

        // Create a new root node and make it the root of the tree
        root = new node(num);
        return root; // Return the position of the new root
    }

    // Additional methods (like destructor, etc.) would go here
};
