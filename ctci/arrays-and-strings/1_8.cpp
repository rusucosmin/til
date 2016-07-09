#include <iostream>
#include <fstream>
/*
Zero Matrix: Write an algorithm such that if an element in an MxN matrix is 0, its entire row and
column are set to 0.
*/

using namespace std;

void setZero(int a[50][50], int n, int m) {
    bool firstLine = false;
    bool firstColumn = false;
    for(int i = 0; i < m; ++ i)
        if(a[0][i] == 0)
            firstLine = 1;
    for(int i = 0; i < n; ++ i)
        if(a[i][0] == 0)
            firstColumn = 1;
    for(int i = 1; i < n; ++ i)
        for(int j = 1; j < m; ++ j)
            if(a[i][j] == 0) {
                a[i][0] = 0;
                a[0][j] = 0;
            }
    for(int i = 0; i < n; ++ i)
        for(int j = 0; j < m; ++ j)
            if(a[i][0] == 0 || a[0][j] == 0)
                a[i][j] = 0;
    if(firstLine)
        for(int i = 0; i < m; ++ i)
            a[0][i] = 0;
    if(firstColumn)
        for(int i = 0; i < n; ++ i)
            a[i][0] = 0;
}

int main() {
    ifstream fin("matrix.in");
    int n, m, a[50][50];
    fin >> n >> m;
    for(int i = 0; i < n; ++ i)
        for(int j = 0; j < m; ++ j)
            fin >> a[i][j];
    for(int i = 0; i < n; ++ i, cerr << '\n')
        for(int j = 0; j < m; ++ j)
            cerr << a[i][j] << ' ';
    setZero(a, n, m);
    for(int i = 0; i < n; ++ i, cerr << '\n')
        for(int j = 0; j < m; ++ j)
            cerr << a[i][j] << ' ';
}
