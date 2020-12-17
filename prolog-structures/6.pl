ganda([], []).
ganda([H | T], [H, H | G]) :- ganda(T, G).
