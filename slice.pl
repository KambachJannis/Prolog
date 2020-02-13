slice(_,_,0,[]).
slice([X|Tail],1,S,[X|L]) :-
    P is S-1,
    slice(Tail,1,P,L).
slice([_|Tail],E,S,L) :-
    F is E-1,
    P is S-1,
    slice(Tail,F,P,L).