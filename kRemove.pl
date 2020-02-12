kRemove([],_,_,[]).
kRemove([X|Tail],1,X,R) :- kRemove(Tail,0,_,R).
kRemove([X|Tail],Z,E,[X|R]) :-
    S is Z-1,
    kRemove(Tail,S,E,R).