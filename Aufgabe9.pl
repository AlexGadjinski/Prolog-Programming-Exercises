last_Element([X],[],X).
last_Element([_|T1],[_|T2],Last_Element) :- last_Element(T1,T2,Last_Element).

