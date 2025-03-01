lists(Liste,NegList,GeradeList) :-
    negList(Liste,NegList),
    geradeList(Liste,GeradeList).

negList([],[]).
negList([X|T],[X|R]) :-
    X < 0,
    negList(T,R).
negList([X|T],R) :-
    X >=0,
    negList(T,R).

geradeList([],[]).
geradeList([X|T],[X|R]) :-
    X mod 2 =:= 0,
    geradeList(T,R).
geradeList([X|T],R) :-
    X mod 2 =\= 0,
    geradeList(T,R).

