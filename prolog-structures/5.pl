append([],L,L).
append([X|L1],L2,[X|L3]) :- append(L1,L2,L3).

union([], Z, W) :- append([], Z, W).
union([X | Y], Z, W) :- member(X,Z), union(Y,Z,W).
union([X | Y], Z, [X | W]) :- union(Y, Z, W).
