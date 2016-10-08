child(katarina, olga).
child(olga, natash).
child(natash, irina).

descend(X,Y)  :-  child(X,Y).

descend(X,Y)  :-
    descend(X,Z),
    descend(Z,Y).
