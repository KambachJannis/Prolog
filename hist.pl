hist(L,R) :- histStart(L,R,0).
histStart(_,_,10).
histStart(L,[S|Tail],Z) :-
    count(L,Z,S),
    Y is Z+1, histStart(L,Tail,Y).

count([],_,0).
count([Z|Tail],Z,S) :-
    count(Tail,Z,R),
    S is R+1.
count([X|Tail],Z,S) :-
    X \= Z,
    count(Tail,Z,S).