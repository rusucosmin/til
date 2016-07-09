#include <iostream>

using namespace std;

bool isRotation(string s1, string s2) {
    s1 = s1 + s1;
    return isSubstring(s1, s2);
}
