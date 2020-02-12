zip([],[],[]).
zip([X|Tail1],[Y|Tail2],[S|L]) :-
    S is X+Y,
    zip(Tail1,Tail2,L).