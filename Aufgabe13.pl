elementOnIndex([X|_],0,X).
elementOnIndex([_|T],Index,Result) :-
    NewIndex is Index - 1,
    elementOnIndex(T,NewIndex,Result).
