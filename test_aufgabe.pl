% Fakten �ber Teilnehmer
:- dynamic participant/3.

% Regel zum Generieren von Fakten �ber Teilnehmer
generate_participant_facts([]).
generate_participant_facts([[Name, Startposition, Platzierung]|Rest]) :-
    assert(participant(Name, Startposition, Platzierung)),
    generate_participant_facts(Rest).

% Regel zum Entfernen eines Teilnehmers
remove_participant(Name) :- retract(participant(Name, _, _)).

% Regel zum Hinzuf�gen eines Teilnehmers
add_participant(Name, Startposition, Platzierung) :-
    assert(participant(Name, Startposition, Platzierung)).

% Regel zur �nderung der Platzierung eines Teilnehmers
change_placement(Name, NewPlacement) :-
    retract(participant(Name, Startposition, _)),
    assert(participant(Name, Startposition, NewPlacement)).

% Regel, die eine Liste mit den Teilnehmern auf den ersten drei Pl�tzen zur�ckgibt
top_three_participants(TopThree) :-
    findall([Name, Startposition, Platzierung], (participant(Name, Startposition, Platzierung), Platzierung =< 3), TopThree).
