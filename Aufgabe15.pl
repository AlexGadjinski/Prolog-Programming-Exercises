factoriel(0,1).
factoriel(X,N) :-
    X1 is X - 1,
    factoriel(X1,N1),
    N is X*N1.
