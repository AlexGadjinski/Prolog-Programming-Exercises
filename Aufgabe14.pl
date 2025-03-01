koeff((X1,Y1),(X2,Y2),A,B) :-
    A is(Y1-Y2)/(X1-X2),
    B is Y1-X1*A.

