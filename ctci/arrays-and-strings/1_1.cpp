#include <iostream>
#include <unordered_set>
#include <cassert>

using namespace std;

/*
1.1 Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?
*/

bool isUniq(string s) {
    unordered_set<char> _hash;
    for(int i = 0; i < int(s.size()); ++ i) {
        if(_hash.find(s[i]) != _hash.end())
            return 0;
        _hash.insert(s[i]);
    }
    return 1;
}

int main() {
    assert(isUniq("") == 1);
    assert(isUniq("a") == 1);
    assert(isUniq("aa") == 0);
    assert(isUniq("abc") == 1);
    assert(isUniq("bb") == 0);
}
