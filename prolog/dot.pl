dot([], [], 0).

dot([Ha | Ta], [Hb | Tb], X) :-
    dot(Ta, Tb, Y),
    X is Y + Ha * Hb.
