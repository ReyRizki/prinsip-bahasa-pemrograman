baris(X, X, [X]).
baris(X, Y, [X|A]) :- (X < Y), Next is X + 1, baris(Next, Y, A).
