%likes(mary,john).
%likes(mary,bananas).
%likes(mary,apples).
%likes(lisa,football).

%likes(john,X) :- likes(X, football).


%thief(william).
%thief(john).

%likes(wini,ball).
%likes(william,shoe).
%likes(john,snow).
%likes(john,dollar).

%may_steal(john,X) :- thief(john), likes(john,X).


%owns(john,book('Wonder',author('Requel','Palacio'))).


%reigns(ram,1900,1950).
%reigns(mike,1951,1970).

%ruler(X,Y) :- reigns(X,A,B),
%    Y>=A,
%    Y=<B.


%population(china,100).
%population(india,85).

%area(china,10).
%area(india,4).

%density(X,Y) :- population(X,Pop), area(X,Ar), Y is Pop/Ar.


%member(X,[X|_]).
%member(X,[_|T]) :- member(X,T).

%size([],0).
%size([_|T],N) :- size(T,N1), N is N1 + 1.

%sum([],0).
%sum([X|T],S) :- sum(T,S1), S is S1 + X.

is_sorted([]).
is_sorted([_]).
is_sorted([X,Y|T]) :- X=<Y, is_sorted([Y|T]).
