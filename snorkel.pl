
beat(garry, barry). 

beat(X, Y) :- (X \= garry -> wearred(X), wearblue(Y); wearblue(Y)). 

wearred(X) :- write(X), write(" wears red."), nl.

wearblue(X) :- write(X), write(" wears blue."), nl.

weargreen(X) :- place(X, 2), number(X, 3), write(X), write(" wears green."), nl.

wearyellow(barry). 

wearyellow(X) :- beat(larry, X), write(X), write(" wears yellow."), nl. 

place(harry, 4). 

place(X, Y) :- write(X), write("'s place is "), write(Y), nl, number(X, Y).

number(X,Y) :- write(X), write("'s number is "), write(Y), nl.

%% place(X, 2) :- weargreen(X). 

%% number(X, Y) :- place(X, Y). 

%% number(X, 3) :- weargreen(X). 

number(X, 2) :- place(X, 1). 

start() :- write("Order: "), query([gary, barry, larry, harry]).

query([A,B|C]) :- ().