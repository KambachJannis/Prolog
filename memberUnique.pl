myMember(_,[]) :- fail.
myMember(X,[X|_]).
myMember(X,[Y|Tail]) :-
    X \= Y,
    myMember(X,Tail).

unique([],[]).
unique([X|Tail],R) :- 
    myMember(X,Tail),
    unique(Tail,R).
unique([X|Tail],[X|R]) :- unique(Tail,R).
