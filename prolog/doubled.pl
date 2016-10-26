doubled([]).

doubled([H, H | T]) :- doubled(T).
