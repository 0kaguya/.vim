#include <bits/stdc++.h>
inline bool eos(char& c) {
    return c != EOF && c != ' ' && c != '\n';
}
#define rd(x) x = RD(x)
template<class T> inline T& RD(T& n) {
    if (typeid(T) == typeid(char)) {
        do { n = getchar(); }
        while (eos(n));
    } else {
        do { n = getchar(); } while (n < '0' || n > '9');
        n = n - '0';
        for (char c = getchar(); c >= '0' && c <= '9'; c = getchar())
            n = c - '0' + n * 10;
    }
    return n;
}
#define iter(x) x.begin(), x.end()
#define rep(x) for (int i = 0; i < x; ++i)
using namespace std;
using LL = long long;
int main() {
}
