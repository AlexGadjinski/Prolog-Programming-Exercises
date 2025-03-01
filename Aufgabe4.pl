bigger(tick(_),0).
bigger(tick(X),tick(Y)) :- bigger(X,Y).

smaller(0,tick(_)).
smaller(tick(X),tick(Y)) :- smaller(X,Y).

