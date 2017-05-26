#include <iostream>
#include <vector>

int main() {
    std::string s;
    std::getline(std::cin, s);

    // number of parity and data bits
    int pbits, dbits = s.size();
    for (pbits = 2; dbits > (1 << pbits) - pbits - 1; ++pbits);
    // total bits
    int tbits = (1 << pbits) - 1;

    std::vector<int> bits(tbits, 0);
    auto it = s.begin();
    for (int i = 1; i <= tbits; ++i) {
        // bit twiddling hack: is not power of 2?
        if (i & (i - 1)) {
            bits[i-1] = *it == '1' ? 1 : 0;

            // toggle parity bits if necessary
            if (bits[i-1]) for (int j = 0; j < pbits; ++j) {
                int pbit = 1 << j;
                if (i & pbit) bits[pbit-1] = bits[pbit-1] ? 0 : 1;
            }

            if (++it == s.end()) break;
        }
    }

    for (int i : bits) std::cout << i;
    std::cout << std::endl;

    return 0;
}
