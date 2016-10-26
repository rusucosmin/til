addone([], []).

addone([Ha | Ta], [Hb | Tb]) :-
    Hb is Ha + 1,
    addone(Ta, Tb).


