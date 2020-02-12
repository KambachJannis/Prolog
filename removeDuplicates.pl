removeDuplicates([],[]).
removeDuplicates([X|Tail],[X|L]) :- checkItem(X,Tail), removeDuplicates(Tail,L).
removeDuplicates([_|Tail],[L]) :- removeDuplicates(Tail,L).
checkItem(_,[]).
checkItem(X,[X|_]) :- fail.
checkItem(X,[Y|Tail]) :- X \= Y, checkItem(X,Tail).