#include <stdlib.h>
#include <stdio.h>
#include <string.h>

// input is read in chunks of this many bytes
#define BUF_SIZE 10

// a node in a BST
struct node {
    char *val;
    int count;
    struct node *left;
    struct node *right;
};

// read an entire line from stdin and return it or NULL at EOF
char *readWord() {
    char *word = NULL;
    size_t len = 1, end = 0;
    do {
        word = realloc(word, len += BUF_SIZE);
        // since we're overwriting the existing NUL terminator, add 1
        if (!fgets(word + end, BUF_SIZE + 1, stdin)) {
            free(word);
            return NULL;
        }
        end += strlen(word + end);
    } while (word[end - 1] != '\n');
    // remove the trailing newline
    word[end - 1] = '\0';
    return word;
}

// create a new node with given val, count of 1, and no children
struct node *makeNode(char *val) {
    struct node *node = malloc(sizeof *node);
    node->val = val;
    node->count = 1;
    node->left = node->right = NULL;
    return node;
}

// insert a value into the BST
struct node *insert(struct node *node, char *word) {
    if (node) {
        int cmp = strcmp(node->val, word);
        if (cmp < 0) node->left = insert(node->left, word);
        else if (cmp > 0) node->right = insert(node->right, word);
        else ++node->count;
        return node;
    } else return makeNode(word);
}

// print the requested data and free the memory used by the BST
void outputAndFree(struct node *node) {
    printf("%s %d\n", node->val, node->count);
    if (node->left) outputAndFree(node->left);
    if (node->right) outputAndFree(node->right);
    free(node->val);
    free(node);
}

int main() {
    struct node *root = makeNode(readWord());

    char *word;
    while (word = readWord()) insert(root, word);

    outputAndFree(root);

    return 0;
}
