combine1([], [], []).
combine1([X], [], [X]).
combine1([], [X], [X]).

combine1([X|Tx], [Y|Ty], [X, Y | Tz]) :-
    combine1(Tx, Ty, Tz).

combine2([], [], []).
combine2([X], [], [X]).
combine2([], [X], [X]).

combine2([X|Tx], [Y|Ty], [[X, Y] | Tz]) :-
    combine2(Tx, Ty, Tz).

combine3([], [], []).
combine3([X], [], [X]).
combine3([], [X], [X]).

combine3([X | Tx], [Y | Ty], [f(X, Y) | Tz]) :-
    combine3(Tx, Ty, Tz).
