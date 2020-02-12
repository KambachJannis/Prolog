prefixSum([],[]).
prefixSum([X],[X]).
prefixSum([X,Y|Tail],[X|L]) :-
    S is X+Y,
    prefixSum([S|Tail],L).