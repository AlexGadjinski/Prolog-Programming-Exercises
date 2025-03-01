generate_facts([]).
generate_facts([[Name, Price, Quantity]|Rest]) :-
    assert(product(Name, Price, Quantity)),
    generate_facts(Rest).

remove_product(Name) :- retract(product(Name, _, _)).

add_product(Name, Price, Quantity) :- assert(product(Name, Price, Quantity)).

change_quantity(Name, NewQuantity) :-
    retract(product(Name, Price, _)),
    assert(product(Name, Price, NewQuantity)).

higher_price_products(Price, Products) :-
    findall(Name, (product(Name, Price1, _),Price1 > Price) , Products).
