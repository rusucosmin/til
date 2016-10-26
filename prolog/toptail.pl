removeLast([_], []).

removeLast([H | T], [H | Tr]) :-
    removeLast(T, Tr).

toptail([_, _], []).

toptail([_ | T], Tr) :-
    removeLast(T, Tr).
