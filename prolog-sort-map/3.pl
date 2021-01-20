calc(0, _, R) :- R is 0.
calc(X, 0.08, R) :- calc(max(X - 1000, 0), 0.04, S), R is (min(1000, X) * 0.08 + S).
calc(X, 0.04, R) :- calc(max(X - 9000, 0), 0.02, S), R is (min(9000, X) * 0.04 + S).
calc(X, 0.02, R) :- R is (min(10000, X) * 0.02).

cost(X, R) :- calc(X, 0.08, R).
