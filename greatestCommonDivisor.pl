gcd(X,X,X).
gcd(X,Y,G) :-
    Y < X,
    gcd(Y,Y,X,G).
gcd(X,Y,G) :-
    X < Y,
    gcd(X,X,Y,G).

gcd(D,X,Y,D) :-
    0 is Y mod D,
    0 is X mod D.
gcd(D,X,Y,G) :-
    N is D-1,
    gcd(N,X,Y,G).