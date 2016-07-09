#include <iostream>
#include <unordered_map>
#include <cassert>

using namespace std;

/*
1.4 Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palin­drome.
    A palindrome is a word or phrase that is the same forwards and backwards. A permutation
    is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.

*/

bool isPalindrom(string text) {
    unordered_map<char, int> fr;
    for(auto it: text) {
        if('A' <= it && it <= 'Z')
            it = tolower(it);
        if(isalpha(it))
            ++ fr[it];
    }
    int cnt = 0;
    for(auto it : fr)
        if(it.second % 2)
            ++ cnt;
    return cnt <= 1;
}

int main() {
    assert(isPalindrom("Tact Coa") == 1);
}
