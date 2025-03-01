combine_lists([],[],[]).
combine_lists([X|T1],[Y|T2],[X,Y|T3]) :- combine_lists(T1,T2,T3).

