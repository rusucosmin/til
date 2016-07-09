#include <iostream>
#include <cassert>

using namespace std;

/*
1.6 String Compression: Implement a method to perform basic string compression using the counts
of repeated characters. For example, the string aabcccccaaa would become a2blc5a3. If the
"compressed" string would not become smaller than the original string, your method should return
the original string. You can assume the string has only uppercase and lowercase letters (a - z).
Hints:#92, #110*/

string compress(string s) {
    string ret;
    ret += s[0];
    int cnt = 1;
    for(int i = 1; i < int(s.size()); ++ i) {
        if(s[i] == s[i - 1])
            ++ cnt;
        else {
            ret += to_string(cnt);
            ret += s[i];
            cnt = 1;
        }
    }
    ret += to_string(cnt);
    if(ret.size() <= s.size())
        return ret;
    return s;
}

int main() {
    assert(compress("aaa") == "a3");
    assert(compress("aaabb") == "a3b2");
    assert(compress("aaaabbc") == "a4b2c1");
}
