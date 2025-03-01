sumOfDigits(Number, Sum) :-
    number_chars(Number, CharList),
    maplist(atom_number, CharList, DigitList),
    sum(DigitList, Sum).

sum([],0).
sum([X|T],S) :- sum(T,S1), S is S1 + X.

