#include <iostream>
#include <string>
#include <stack>

int main() {
    std::string s;
    std::getline(std::cin, s);

    std::stack<char> open;
    for (char c : s) {
        if (c == '(' || c == '[' || c == '{' || c == '<') {
            open.push(c);
        } else {
            if (open.empty() ||
                (c == ')' && open.top() != '(') ||
                (c == ']' && open.top() != '[') ||
                (c == '}' && open.top() != '{') ||
                (c == '>' && open.top() != '<')) {
                std::cout << false << std::endl;
                return 0;
            }
            open.pop();
        }
    }

    std::cout << open.empty() << std::endl;
    return 0;
}
