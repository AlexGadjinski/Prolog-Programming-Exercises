color(red).
color(blue).
color(green).
color(yellow).
color(orange).
color(brown).

map(V,T,Sa,K,St,O,N,W,B):-
color(V),
color(T),
color(Sa),
color(K),
color(St),
color(O),
color(N),
color(W),
color(B),
V \= T,
T \= Sa,
T \= K,
Sa \= K,
Sa \= St,
Sa \= O,
K \= St,
St \= O,
St \= N,
St \= B,
O \= N,
N \= W,
N \= B.
