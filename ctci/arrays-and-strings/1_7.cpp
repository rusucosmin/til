#include <iostream>
#include <fstream>

using namespace std;

void rotate(int a[50][50], int n) {
    for(int i = 0; i < n / 2; ++ i)
        for(int j = 0; j < n / 2; ++ j) {
            int aux = a[i][j];
            a[i][j] = a[n - j - 1][i];
            a[n - j - 1][i] = a[n - i - 1][n - j - 1];
            a[n - i - 1][n - j - 1] = a[j][n - i - 1];
            a[j][n - i - 1] = aux;
        }
}

int a[50][50], n;

int main() {
    ifstream fin("input.in");
    fin >> n;
    for(int i = 0; i < n; ++ i)
        for(int j = 0; j < n; ++ j)
            fin >> a[i][j];
    for(int i = 0; i < n; ++ i, cerr << '\n')
        for(int j = 0; j < n; ++ j)
            cerr << a[i][j] << ' ';

    rotate(a, n);
    for(int i = 0; i < n; ++ i, cout << '\n')
        for(int j = 0; j < n; ++ j)
            cout << a[i][j] << ' ';
}
