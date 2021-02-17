motor(0, _, R) :- R is 0.
motor(H, 2000, R) :- motor(max(H - 5, 0), 1500, S), R is (min(5, H) * 2000 + S).
motor(H, 1500, R) :- motor(max(H - 5, 0), 1000, S), R is (min(5, H) * 1500 + S).
motor(H, 1000, R) :- R is (H * 1000).

mobil(0, _, R) :- R is 0.
mobil(H, 4000, R) :- mobil(max(H - 5, 0), 3000, S), R is (min(5, H) * 4000 + S).
mobil(H, 3000, R) :- mobil(max(H - 5, 0), 2000, S), R is (min(5, H) * 3000 + S).
mobil(H, 2000, R) :- R is (H * 2000).

parkir(motor, H, R) :- motor(H, 2000, R).
parkir(mobil, H, R) :- mobil(H, 4000, R).
