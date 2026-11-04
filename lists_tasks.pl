% Task 2 - Delete Every Occurrence

deleteElement(_, [], []).

deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).

deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).

% Task 3 - Add at the End

add_at_the_end(X, List, Result) :-
    append(List, [X], Result).
