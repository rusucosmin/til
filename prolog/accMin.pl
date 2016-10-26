accMin([], M, M).

accMin([H | T], Min, X) :-
    Min > H,
    accMin(T, H, X).

accMin([H | T], Min, X) :-
    Min =< H,
    accMin(T, Min, X).

getMin([H | T], Y) :-
    accMin(T, H, Y).
