word(bananas,b,a,n,a,n,a,s).
word(mailbox,m,a,i,l,b,o,x).
word(retries,r,e,t,r,i,e,s).
word(manager,m,a,n,a,g,e,r).
word(failure,f,a,i,l,u,r,e).
word(halogen,h,a,l,o,g,e,n).

find_crossword(P1,P2,P3,K1,K2,K3) :-
    word(P1,_,A,_,B,_,C,_),
    word(P2,_,D,_,E,_,F,_),
    word(P3,_,G,_,H,_,I,_),
    word(K1,_,A,_,D,_,G,_),
    word(K2,_,B,_,E,_,H,_),
    word(K3,_,C,_,F,_,I,_),
    P1 \= P2, P1 \= P3, P1 \= K1, P1 \= K2, P1 \= K3,
    P2 \= P3, P2 \= K1, P2 \= K2, P2 \= K3,
    P3 \= K1, P3 \= K2, P3 \= K3,
    K1 \= K2, K1 \= K3,
    K2 \= K3.
