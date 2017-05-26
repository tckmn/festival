#include <stdlib.h>
#include <stdio.h>

// nodes of a singly linked list
struct node {
    int val;
    struct node **paths;
    int npaths;
    int seen;
    struct node *next;
};

struct node *findNode(struct node *node, int val) {
    while (node->next != NULL) {
        node = node->next;
        if (node->val == val) return node;
    }
    // node does not exist, make it
    node->next = malloc(sizeof *node);
    node = node->next;
    node->val = val;
    node->paths = NULL;
    node->npaths = 0;
    node->seen = 0;
    node->next = NULL;
    return node;
}

int mark(struct node *node, int n) {
    if (node->seen == n) return 1;
    else if (node->seen) return 0;
    else {
        // not a loop, hasn't been seen before
        node->seen = n;
        for (int i = 0; i < node->npaths; ++i) {
            if (mark(node->paths[i], n)) return 1;
        }
    }
    return 0;
}

int main() {
    struct node *root = malloc(sizeof *root);
    root->next = NULL;

    // read in all the data, construct a graph
    int from, to;
    while (scanf("%d %d", &from, &to) != EOF) {
        struct node *fromN = findNode(root, from), *toN = findNode(root, to);
        fromN->paths = realloc(fromN->paths,
                (++fromN->npaths) * sizeof *fromN->paths);
        fromN->paths[fromN->npaths - 1] = toN;
    }

    // check for loops by searching on each node
    struct node *node = root;
    for (int n = 1; node->next != NULL; ++n) {
        node = node->next;
        if (!node->seen && mark(node, n)) {
            puts("true");
            return 0;
        }
    }

    puts("false");
    return 0;
}
