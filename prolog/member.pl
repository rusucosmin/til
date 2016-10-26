% 1680724204106

member(X, [X|_]).

member(X, [_|T]) :-
    member(X, T).
