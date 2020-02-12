elementInBoth([],_) :- fail.
elementInBoth([X|_],L) :- 
    checkElement(X,L).
elementInBoth([_|Tail],L) :-
    elementInBoth(Tail,L).

checkElement(_,[]) :- fail.
checkElement(X,[X|_]).
checkElement(X,[Y|Tail]) :-
    X \= Y,
    checkElement(X,Tail).