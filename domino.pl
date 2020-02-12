getFit(X-Y,[X-Y|Tail],Tail).
getFit(X-Y,[Y-X|Tail],Tail).
getFit(X-Y,[Z-W|Tail],[Z-W|L]) :-
    getFit(X-Y,Tail,L).

domino(L,O) :-
    domino(L,_,O).
domino([],_,[]).
domino(L,X,[X-Y|O]) :-
    getFit(X-Y,L,R),
    domino(R,Y,O).