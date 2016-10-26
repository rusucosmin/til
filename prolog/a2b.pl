a2b([], []).

a2b([a|TA], [b|TB]) :-
    a2b(TA, TB).
