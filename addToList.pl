addToList(_,[],[]).
addToList(X,[Y|Tail],[S|L]) :-
    S is X+Y,
    addToList(X,Tail,L).