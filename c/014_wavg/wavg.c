#include <stdio.h>

int main() {
    int n, w, total, weights;
    while (scanf("%d %d", &n, &w) != EOF) {
        total += n*w;
        weights += w;
    }
    printf("%f\n", (float)total / weights);
    return 0;
}
