parent(john,sarah).
parent(john,jim).
parent(mary,sarah).
parent(mary,jim).
parent(sarah,betty).
parent(dave,betty).
parent(jim,jill).
parent(jim,susan).
parent(kate,jill).
parent(kate,susan).
female(sarah).
female(mary).
female(betty).
female(jill).
female(kate).
female(susan).
male(john).
male(jim).
male(dave).

grandfather(X,Y) :- parent(Z, Y), parent(X, Z), male(X).
grandmother(X,Y) :- parent(Z, Y), parent(X, Z), female(X).

aunt(X, Y) :- parent(Z, Y), parent(W, Z), ((parent(W, X), \+ (X = Z), female(X)); parent(W, A), \+ (A = Z), parent(A, B), parent(X, B), \+ (X = A), female(X)).
uncle(X, Y) :- parent(Z, Y), parent(W, Z), ((parent(W, X), \+ (X = Z), male(X)); parent(W, A), \+ (A = Z), parent(A, B), parent(X, B), \+ (X = A), male(X)).
