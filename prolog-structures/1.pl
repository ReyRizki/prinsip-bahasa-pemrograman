replace_all([], _, _, []).
replace_all([Target | T], Target, New, [New | R]) :- replace_all(T, Target, New, R).
replace_all([H | T], Target, New, [H | R]) :- replace_all(T, Target, New, R).
