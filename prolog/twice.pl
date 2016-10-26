twice([], []).

twice([A | X], [A, A | Y]) :-
    twice(X, Y).
