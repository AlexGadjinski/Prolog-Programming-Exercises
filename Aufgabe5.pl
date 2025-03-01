direktflug(sofia,varna).
direktflug(sofia,paris).
direktflug(sofia,london).
direktflug(london,edinburgh).
direktflug(paris,new_york).
direktflug(new_york,seattle).
direktflug(london,dublin).

direktflug(varna,sofia).
direktflug(paris,sofia).
direktflug(london,sofia).
direktflug(edinburgh,london).
direktflug(new_york,paris).
direktflug(seattle,new_york).
direktflug(dublin,london).


reise(A,B) :-
    direktflug(A,B);
    direktflug(B,A).
reise(A,B) :-
    direktflug(A,A1),
    reise(A1,B,A).

reise(A,B,_) :-
    direktflug(A,B);
    direktflug(B,A).
reise(A,B,Last) :-
    direktflug(A,A1),
    A1\=Last,
    reise(A1,B,A).

