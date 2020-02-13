is_prime(1,_).
is_prime(Y,X) :-
    not(0 is X mod Y),
    S is Y-1,
    is_prime(S,X).
is_prime(X) :-
    Y is X-1,
    is_prime(Y,X).
