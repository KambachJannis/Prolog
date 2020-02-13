noduplicates([]).
noduplicates([X|Tail]) :- 
    not(member(X,Tail)),
    noduplicates(Tail).