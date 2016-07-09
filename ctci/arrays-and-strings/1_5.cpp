#include <iostream>
#include <cassert>
#include <fstream>

using namespace std;

bool edit(string a, string b) {
    /// replace case
    if(a.size() == b.size()) {
        int cnt = 0;
        for(int i = 0; i < int(a.size()); ++ i)
            if(a[i] != b[i])
                ++ cnt;
        if(cnt > 1)
            return 0;
        return 1;
    }
    // insert or remove
    if(a.size() > b.size())
        swap(a, b);
    if(b.size() - a.size() > 1)
        return 0;
    int i;
    for(i = 0; i < int(a.size()); ++ i)
        if(a[i] != b[i])
            break;
    for(; i < int(a.size()); ++ i)
        if(a[i] != b[i + 1])
            break;
    return i == int(a.size());
}

int main() {
    assert(edit("pale", "ple") == 1);
    assert(edit("pales", "pale") == 1);
    assert(edit("pale", "bale") == 1);
    assert(edit("pale", "bake") == 0);
}
