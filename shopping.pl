
% Lab 7 - Task 1: Shopping Program

start :-
    Basket = [coffee, milk, chocolate, apple, juice],
    menu(Basket).

menu(Basket) :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    action(Choice, Basket).

action(d, Basket) :-
    display_items(Basket),
    menu(Basket).

action(a, Basket) :-
    write('Enter the item you want to add: '),
    read(Item),
    append(Basket, [Item], NewBasket),
    writeln('The item has been added'),
    menu(NewBasket).

action(e, _) :-
    writeln('Goodbye!').

action(_, Basket) :-
    writeln('Invalid choice!'),
    menu(Basket).

display_items([]).
display_items([Head|Tail]) :-
    writeln(Head),
    display_items(Tail).
