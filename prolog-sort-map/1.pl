urut([], []).
urut([H|T],[H|R]) :-
        length(H, Lh),
        forall(member(M, T),
               (length(M, Lm),
                Lh =< Lm)),
	urut(T, R), !.
urut([F,S|T], R) :-
        append(T,[F],X),
	urut([S|X], R).
