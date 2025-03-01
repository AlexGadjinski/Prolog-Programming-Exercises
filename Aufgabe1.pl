standort(sofia,bulgarien).
standort(plovdiv,bulgarien).
standort(varna,bulgarien).
standort(berlin,deutschland).
standort(paris,frankreich).

hauptstadt(sofia).
hauptstadt(berlin).
hauptstadt(paris).

land_der_hauptstadt(X,Y) :- hauptstadt(X), standort(X,Y).

