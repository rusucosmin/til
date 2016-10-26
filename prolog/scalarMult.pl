scalarMult(X, [], []).

scalarMult(X, [H | T], [Hx | Tx]) :-
    Hx is H * X,
    scalarMult(X, T, Tx).
