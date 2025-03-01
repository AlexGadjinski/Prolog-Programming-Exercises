nation(englaender).
nation(franzosen).
nation(japaner).

farbe(rot).
farbe(blau).
farbe(gruenn).

haustier(tiger).
haustier(nashoerner).
haustier(zebra).

position(links).
position(mitte).
position(rechts).

farbe1(englaender,rot).
farbe2(N2,blau).
farbe3(N3,gruenn).
haustier1(franzosen,tiger).
haustier2(X,nashoerner).
haustier3(Y,zebra).
position1(japaner,rechts,X).
position2(X,links,N2).


nachbarn(N1,F1,T1,P1,
         N2,F2,T2,P2,
         N3,F3,T3,P3) :-
    nation(N1),nation(N2),nation(N3),
    farbe(F1),farbe(F2),farbe(F3),
    haustier(T1),haustier(T2),haustier(T3),
    position(P1),position(P2),position(P3),
    N1\=N2,N1\=N3,N2\=N3,
    T1\=T2,T1\=T3,T2\=T3,
    F1\=F2,F1\=F3,F2\=F3,
    P1\=P2,P1\=P3,P2\=P3,
    farbe1(N1,F1),
    farbe2(N2,F2),
    farbe3(N3,F3),
    (haustier1(N2,T1)
