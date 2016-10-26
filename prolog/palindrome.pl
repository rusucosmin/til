reverse([], A, A).

reverse([H | T], A, X) :-
    reverse(T, [H | A], X).

palindrom(L) :-
    reverse(L, [], X),
    X = L.
