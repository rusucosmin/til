tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([], []).

listtran([X|Tx], [Y|Ty]) :-
    tran(X, Y),
    listtran(Tx, Ty).
