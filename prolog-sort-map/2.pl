randElement(X) :- random(0, 101, N), random(97, 123, M), char_code(C, M), atom_concat(C, '-', S), atom_concat(S, N, X).

pasanganrandom(L, N) :- length(L, N), maplist(randElement, L).
