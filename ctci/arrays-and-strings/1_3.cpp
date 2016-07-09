#include <iostream>
#include <cassert>

using namespace std;

/* URLify: Write a method to replace all spaces in a string with '%20'. You may assume that the string
has sufficient space at the end to hold the additional characters, and that you are given the "true"
length of the string. (Note: If implementing in Java, please use a character array so that you can
perform this operation in place.)
*/

string URLify(string s, int n) {
    int pos = s.size() - 1;
    for(int i = n - 1; i >= 0; -- i) {
        if(s[i] == ' ') {
            s[pos] = '0';
            s[pos - 1] = '2';
            s[pos - 2] = '%';
            pos -= 3;
        }
        else
            s[pos --] = s[i];
    }
    return s;
}

int main() {
    assert(URLify("Mr John Smith    ", 13) == "Mr%20John%20Smith");
    assert(URLify("cosmin", 6) == "cosmin");
    assert(URLify(" cosmin  ", 7) == "%20cosmin");
    return 0;
}
