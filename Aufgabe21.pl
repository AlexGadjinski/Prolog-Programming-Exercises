kompressieren([],[]).
kompressieren([X|T1],[X|T2]) :- kompressieren(X,T1,T2).

kompressieren(_,[],[]).
kompressieren(Last,[X|T1],[X|T2]) :- X \= Last, kompressieren(X,T1,T2).
kompressieren(Last,[X|T1],T2) :- X == Last, kompressieren(X,T1,T2).
