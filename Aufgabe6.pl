verbindung(0,4).
verbindung(1,3).
verbindung(3,4).

verbindung(2,5).
verbindung(2,6).
verbindung(5,6).

verbindung(4,0).
verbindung(3,1).
verbindung(4,3).

verbindung(5,2).
verbindung(6,2).
verbindung(6,5).

verbunden_mit(A,B) :-
    verbindung(A,B);
    verbindung(B,A).
verbunden_mit(A,B) :-
    verbindung(A,A1),
    Counter is 1,
    verbunden_mit(A1,B,A,Counter).

verbunden_mit(A,B,_,_) :-
    verbindung(A,B);
    verbindung(B,A).
verbunden_mit(A,B,Last,Counter) :-
    Counter \= 5,
    verbindung(A,A1),
    A1\=Last,
    New_counter is Counter + 1,
    verbunden_mit(A1,B,A,New_counter).
