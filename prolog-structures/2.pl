numval(add(X, Y), V) :- numval(X, R1), numval(Y, R2), V is R1+R2.
numval(multiply(X, Y), V) :- numval(X, R1), numval(Y, R2), V is R1*R2.
numval(X, X).
