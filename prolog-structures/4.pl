takeout(X, [X | R], R).  
takeout(X, [F | R], [F | S]) :- takeout(X, R, S).

permutation([], []).
permutation([X | Y], Z) :- permutation(Y, W), takeout(X, Z, W).  
