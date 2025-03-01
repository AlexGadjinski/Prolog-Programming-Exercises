reverse_functor(Term, Reversed) :-
    functor(Term, Functor, _),
    atom_chars(Functor, FunctorChars),
    reverse(FunctorChars, ReversedChars),
    atom_chars(ReversedFunctor, ReversedChars),

    Term =.. [_|Args],
    Reversed =.. [ReversedFunctor|Args].
