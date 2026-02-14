#include <iostream>
using namespace std;

// Define the structure for a tree node
struct TreeNode {
    int data;
    TreeNode* left;
    TreeNode* right;

    // Constructor to initialize a node
    TreeNode(int value) {
        data = value;
        left = NULL;
        right = NULL;
    }
};

// Function for Inorder Traversal (Left, Root, Right)
void inorder(TreeNode* root) {
    if (root == NULL)
        return;
    inorder(root->left);     
    cout << root->data << " "; 
    inorder(root->right);      
}

// Function for Postorder Traversal (Left, Right, Root)
void postorder(TreeNode* root) {
    if (root == NULL)
        return;
    postorder(root->left);     
    postorder(root->right);    
    cout << root->data << " "; 
}
int main() {
    // Create a simple binary tree
    TreeNode* root = new TreeNode(1);
    root->left = new TreeNode(2);
    root->right = new TreeNode(3);
    root->left->left = new TreeNode(4);
    root->left->right = new TreeNode(5);

    cout << "Inorder Traversal: ";
    inorder(root);
    cout << endl;

    cout << "Postorder Traversal: ";
    postorder(root);
    cout << endl;

    return 0;
}
