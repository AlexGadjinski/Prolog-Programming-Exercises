same_type([],[]).
same_type([X|T1],[Y|T2]) :-
    term_type(X,Type),
    term_type(Y,Type),
    same_type(T1,T2).

term_type(Term,Type) :-
    (atom(Term), Type = atom);
    (integer(Term), Type = integer);
    (float(Term), Type = float).

