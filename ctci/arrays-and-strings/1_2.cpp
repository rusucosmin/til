#include <iostream>
#include <unordered_map>
#include <cassert>

using namespace std;

/*
1.2 Check Permutation: Given two strings, write a method to decide if one is a permutation of the
other.
*/

bool isPerm(string a, string b) {
    if(a.size() != b.size())
        return 0;
    unordered_map<char, int> fr;
    for(auto it : a)
        ++ fr[it];
    for(auto it : b) {
        -- fr[it];
        if(fr[it] < 0)
            return 0;
    }
    return 1;
}

int main() {
    assert(isPerm("a", "a") == 1);
    assert(isPerm("a", "b") == 0);
    assert(isPerm("aa", "a") == 0);
    assert(isPerm("ana", "naa") == 1);
    assert(isPerm("", "") == 1);
    assert(isPerm("", "cosmin") == 0);
}
