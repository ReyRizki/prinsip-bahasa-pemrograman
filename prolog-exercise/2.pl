subdir(private, documents).
subdir(images, private).
subdir(videos, private).
subdir(work, documents).
subdir(research, work).
subdir(teaching, work).

descendants(X, Y) :- subdir(X, Y).
descendants(X, Y) :- subdir(Z, Y), descendants(X, Z).
