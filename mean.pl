mean([],_) :- fail.
mean(L,X) :- 
    length(L,I), 
    add(L,S), 
    X is S/I.

add([X],X).
add([X|Tail],S) :- 
    add(Tail,E), 
    S is X+E.
