swap(leaf(X), leaf(X)).

swap(tree(X, Y), T) :-
    swap(X, A),
    swap(Y, B),
    T = tree(B, A).
